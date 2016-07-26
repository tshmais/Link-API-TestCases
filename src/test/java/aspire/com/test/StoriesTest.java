package aspire.com.test;

import static java.util.Arrays.asList;
import static org.jbehave.core.io.CodeLocations.codeLocationFromClass;
import static org.jbehave.core.reporters.Format.CONSOLE;
import static org.jbehave.web.selenium.WebDriverHtmlOutput.WEB_DRIVER_HTML;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import jo.aspire.generic.EnvirommentManager;
import jo.aspire.web.automationUtil.PlatformInformation;

import org.jbehave.core.configuration.Configuration;
import org.jbehave.core.embedder.Embedder;
import org.jbehave.core.embedder.MetaFilter;
import org.jbehave.core.embedder.StoryControls;
import org.jbehave.core.embedder.StoryManager;
import org.jbehave.core.failures.FailingUponPendingStep;
import org.jbehave.core.failures.PendingStepStrategy;
import org.jbehave.core.io.LoadFromClasspath;
import org.jbehave.core.io.RelativePathCalculator;
import org.jbehave.core.io.StoryFinder;
import org.jbehave.core.junit.JUnitStories;
import org.jbehave.core.model.Meta;
import org.jbehave.core.model.Scenario;
import org.jbehave.core.model.Story;
import org.jbehave.core.reporters.CrossReference;
import org.jbehave.core.reporters.Format;
import org.jbehave.core.reporters.StoryReporterBuilder;
import org.jbehave.core.steps.InjectableStepsFactory;
import org.jbehave.core.steps.spring.SpringApplicationContextFactory;
import org.jbehave.core.steps.spring.SpringStepsFactory;
import org.jbehave.web.selenium.ContextView;
import org.jbehave.web.selenium.LocalFrameContextView;
import org.jbehave.web.selenium.SeleniumConfiguration;
import org.jbehave.web.selenium.SeleniumContext;
import org.jbehave.web.selenium.SeleniumContextOutput;
import org.jbehave.web.selenium.SeleniumStepMonitor;
import org.springframework.context.ApplicationContext;

import com.aspire.automationReport.AspireReport;

/**
 * Class which provides the link between the JBehave's executor framework
 * (called Embedder) and the textual stories.
 */
// @RunWith(JUnitReportingRunner.class)
public class StoriesTest extends JUnitStories {
	private static boolean rerunFailedFlag = false;

	private String[] browsers;
	static boolean isRunOnSauce;
	static String[] sauceBrowsers;
	PendingStepStrategy pendingStepStrategy = new FailingUponPendingStep();
	CrossReference crossReference = new CrossReference().withJsonOnly().withPendingStepStrategy(pendingStepStrategy)
			.withOutputAfterEachStory(true).excludingStoriesWithNoExecutedScenarios(true);
	ContextView contextView = new LocalFrameContextView().sized(640, 80).located(10, 10);
	SeleniumContext seleniumContext = new SeleniumContext();
	SeleniumStepMonitor stepMonitor = new SeleniumStepMonitor(contextView, seleniumContext,
			crossReference.getStepMonitor());
	Format[] formats = new Format[] { new SeleniumContextOutput(seleniumContext), CONSOLE, WEB_DRIVER_HTML,
			AspireReport.Aspire_Report };
	StoryReporterBuilder reporterBuilder = new StoryReporterBuilder().withFailureTrace(true)
			.withFailureTraceCompression(true).withDefaultFormats().withFormats(formats)
			.withCrossReference(crossReference);

	@Override
	public Configuration configuration() {
		return new SeleniumConfiguration().useSeleniumContext(seleniumContext)
				.usePendingStepStrategy(pendingStepStrategy)
				.useStoryControls(new StoryControls().doResetStateBeforeScenario(true)).useStepMonitor(stepMonitor)
				.useStoryLoader(new LoadFromClasspath(StoriesTest.class)).useStoryReporterBuilder(reporterBuilder);
	}
	
      

	@Override
	public InjectableStepsFactory stepsFactory() {
		ApplicationContext context = new SpringApplicationContextFactory("steps.xml").createApplicationContext();
		return new SpringStepsFactory(configuration(), context);
	}

	@Override
	protected List<String> storyPaths() {
		return new StoryFinder().findPaths(codeLocationFromClass(this.getClass()).getFile(),
				asList("**/" + System.getProperty("storyFilter", "*") + ".story"),
				null);

	}

	protected List<String> failedStoryPaths(List<String> stories) {
		ArrayList<String> storiesToRun = new ArrayList<String>();

		for (String story : stories) {
			storiesToRun.add("**/" + story + ".story");
		}
		return new StoryFinder().findPaths(codeLocationFromClass(this.getClass()).getFile(), storiesToRun, null);
	}

	public void startStories(Embedder embedder, Boolean runFailed) {
		try {
			if (runFailed) {
				embedder.runStoriesAsPaths(
						failedStoryPaths(AspireReport.getInstance().getReportDataManager().getFailedStories()));
			} else {
				embedder.runStoriesAsPaths(storyPaths());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// embedder.generateCrossReference();
		}
	}

	@Override
	public void run() throws Throwable {

		EnvirommentManager.setInitialClass(this.getClass());
		PlatformInformation.isMobile = Boolean.parseBoolean(EnvirommentManager.getInstance().getProperty("isMobile"));

		isRunOnSauce = Boolean.parseBoolean(EnvirommentManager.getInstance().getProperty("useSouceLabs"));
		boolean rerunFailed = Boolean.parseBoolean(EnvirommentManager.getInstance().getProperty("rerunFailedStories"));
		rerunFailedFlag = rerunFailed;
		int rerunCount = 0;
		if (rerunFailed) {
			rerunCount = Integer.parseInt(EnvirommentManager.getInstance().getProperty("rerunCount"));
		}
		 String buildName = System.getProperty("buildName");
		Date date = new Date();
		SimpleDateFormat ft = new SimpleDateFormat("yyyy MM dd - hh,,mm,,ss");
		if (buildName == null) {
			buildName = "BuildNumber";
		}

		String dateAndTime = ft.format(date);
		String dateAndTime1 = ft.format(date);
		dateAndTime = dateAndTime.replace(",,", " ");
		dateAndTime1 = dateAndTime1.replace(",,", ":");
		
		String ReportName = System.getProperty("Report_Name");
		if (ReportName == null) {
		 ReportName = "Link API Automation Report " + dateAndTime + " " +"(BuildNumber " + buildName + ")" + ".html";
		}
		
		AspireReport.getInstance().getReportDataManager().setReportFileName(ReportName);
		
		new File(AspireReport.getInstance().getReportDataManager().getReportPath()).mkdirs();
		String OS = System.getProperty("os.name").toLowerCase();
		System.out.println("Opertation system version: " + OS);
		String root_url = System.getProperty("ROOT_URL");
    	if (root_url == null) {
			root_url = EnvirommentManager.getInstance().getProperty("ROOT_URL");
		}
    	String environment = "";
		if (root_url.contains("qa")) {
			environment = "QA environment";
		} else {
			environment = "INT environment";
		}
		 AspireReport.getInstance().getReportDataManager().setReportTitle("Link APIs" + " " + "(" + environment + ")" );
		  AspireReport.getInstance().getReportDataManager().setReportSubTitle("Testing Report");
		  AspireReport.getInstance().getReportDataManager().setTitle(dateAndTime1);

//		if (System.getProperty("RunBrowsers") != null && System.getProperty("RunBrowsers") != "") {
//			browsers = System.getProperty("RunBrowsers").split(",");
//		} else {
//			browsers = EnvirommentManager.getInstance().getProperty("RunBrowser").split(",");
//		}

//		for (int i = 0; i < browsers.length; i++) {
//			PlatformInformation.browserName = browsers[i];
			Embedder embedder = getEmbedder();
//			embedder.systemProperties().setProperty("browser", browsers[i]);
			AspireReport.getInstance().getReportDataManager().setReportFileName(ReportName);
			startStories(embedder, false);
			if (rerunFailed) {
				rerunFailedStories(rerunCount);
			} else {
				skipScenariosList(embedder);
			}
		//}

	}

	private Embedder getEmbedder() {
		Embedder embedder = null;
		useEmbedder(new Embedder());
		useConfiguration(null);
		useStepsFactory(null);
		embedder = configuredEmbedder();
		// embedder.embedderControls().useStoryTimeouts("**/*-Long*:3000,**/***:1500");
		// embedder.embedderControls().doFailOnStoryTimeout(true);
		embedder.embedderControls().doGenerateViewAfterStories(false);
		embedder.useMetaFilters(getMetaData());
		int threads = Integer.parseInt(EnvirommentManager.getInstance().getProperty("Threads"));
		embedder.embedderControls().useThreads(threads);
		return embedder;
	}

	private void rerunFailedStories(int rerunCount) {
		Embedder embedder = null;
		for (int j = 1; j <= rerunCount; j++) {
			if (AspireReport.getInstance().getReportDataManager().getFailedStories() != null
					&& AspireReport.getInstance().getReportDataManager().getFailedStories().size() > 0) {
				embedder = getEmbedder();
				// embedder.embedderControls().useStoryTimeouts("**/*-Long*:30000,**/***:15000");
				startStories(embedder, true);
			}
			if (j == (rerunCount - 1)) {
				rerunFailedFlag = false;
				if (embedder != null) {
					skipScenariosList(embedder);
				}
			}
		}

	}

	public List<String> getMetaData() {
		String metaData = System.getProperty("metaData");
		if (metaData == null) {
			metaData = EnvirommentManager.getInstance().getProperty("metaData");
		}
		ArrayList<String> metaDataList = new ArrayList<String>();
		if (metaData != null && !metaData.isEmpty()) {
			metaDataList.addAll(asList(metaData.split(",")));
		}
		metaDataList.add("-skip");
		return metaDataList;
	}

	public void FillPlatformInfo(String browserInfo) {
		String[] nodes = browserInfo.split(",");
		for (String node : nodes) {
			String[] values = node.split(":");
			if (values.length > 1) {
				if (values[0].equals("platformName")) {
					PlatformInformation.platformName = values[1];
				} else if (values[0].equals("version")) {
					PlatformInformation.browserVersion = values[1];
				} else if (values[0].equals("screenResolution")) {
					PlatformInformation.screenResolution = values[1];
				} else if (values[0].equals("deviceName")) {
					PlatformInformation.deviceName = values[1];
				} else if (values[0].equals("deviceOrientation")) {
					PlatformInformation.deviceOrientation = values[1];
				} else if (values[0].equals("browserName")) {
					PlatformInformation.browserName = values[1];
				}
			}
		}

	}
	
	


	public static void skipScenariosList(Embedder embedder) {
		if (!rerunFailedFlag) {
			ArrayList<Scenario> skipScenarios = new ArrayList<Scenario>();
			StoryManager storyManager = embedder.storyManager();
			List<String> stories = new StoryFinder().findPaths(codeLocationFromClass(StoriesTest.class).getFile(),
					asList("**/" + System.getProperty("storyFilter", "*") + ".story"), null);
			for (String storyPath : stories) {
				Story story = storyManager.storyOfPath(storyPath);
				if (new MetaFilter("skip").allow(story.getMeta())) {
					for (Scenario scenario : story.getScenarios()) {
						// scenario also inherits meta from story
						Meta inherited = scenario.getMeta().inheritFrom(story.getMeta());
						if (new MetaFilter("+skip").allow(inherited)) {
							System.out.println("this is skipped:" + scenario.getTitle());
							skipScenarios.add(scenario);
							break;
						}
					}
				}
			}

			AspireReport.getInstance().getReportDataManager().addSkippedScenarios(skipScenarios);
		}
	}

}
