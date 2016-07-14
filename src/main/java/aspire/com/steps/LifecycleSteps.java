package aspire.com.steps;

import java.awt.GraphicsEnvironment;
import java.io.File;
import java.io.PrintWriter;

import jo.aspire.generic.EnvirommentManager;

import org.jbehave.core.annotations.AfterScenario;
import org.jbehave.core.annotations.AfterStories;
import org.jbehave.core.annotations.AfterStory;
import org.jbehave.core.annotations.BeforeScenario;
import org.jbehave.core.annotations.BeforeStories;
import org.jbehave.core.annotations.BeforeStory;
import org.openqa.selenium.WebDriverException;



import com.aspire.automationReport.AspireReport;
import com.aspire.automationReport.MetaStoryInfo;
import com.aspire.automationReport.StoriesStatusCounter;

public class LifecycleSteps {
	
    public LifecycleSteps() {

    }

    @BeforeStories
    public void runBeforeAllStories() {
        try {
            // do something
        } catch (WebDriverException e) {
            e.printStackTrace();
        }
    }

    @BeforeStory
    public void runBeforeEachStory() {
        try {
        
        	} catch (WebDriverException e) {
            e.printStackTrace();
        }
    }
    
    @BeforeScenario
     public void runBeforeEachScinario() {
    	// do something
    }
    
    @AfterStory
    public void runAfterEachStory() {
        try {
        	AspireReport.getInstance().printEveryThing();
        } catch (WebDriverException e) {
            e.printStackTrace();
        }
    }
    
    @AfterStories
    public void runAfterStories() {
    	AspireReport.getInstance().printEveryThing();
        try {
        	
        	String root_url = System.getProperty("ROOT_URL");
        	if (root_url == null) {
    			root_url = EnvirommentManager.getInstance().getProperty("ROOT_URL");
    		}
        	String environment = "";
			if (root_url.contains("qa")) {
				environment = "Link API - QA environment";
			} else {
				environment = "Link API - INT environment";
			}
        	  StoriesStatusCounter counter =  AspireReport.getInstance().getReportDataManager().getTestCounters();
              int passedTestCount = counter.getPassed();
              int failedTestCount = counter.getFailed();
              int skippedTestCount = counter.getSkipped();
              int totalTestCount = passedTestCount + failedTestCount + skippedTestCount;
     	     PrintWriter writer = new PrintWriter(AspireReport.getInstance().getReportDataManager().getReportPath() + File.separator + "High_Level_Results.txt", "UTF-8");
     	   
     	     String HighLevelResults = "  - Number of test cases ran: "+totalTestCount+ "<br/>" + "<font color='green'>  - Number of test cases passed: </font>" +passedTestCount+ "<br/>" + "<font color='red'>  - Number of test cases failed: </font>" +failedTestCount + "<br/>" + "<font color='blue'>  - Number of test cases skipped: </font>" + skippedTestCount + "<br/>";
     	     for(String key : AspireReport.getInstance().getReportDataManager().getTestCounters().getMetaInfo().keySet()){
     	    	MetaStoryInfo metaInfo = AspireReport.getInstance().getReportDataManager().getTestCounters().getMetaInfo().get(key);
     	    	HighLevelResults = HighLevelResults + "<font color='green'>  - Number of " + key + " test cases passed: </font>" + metaInfo.getPassedCount() + "<br/>" + "<font color='red'>  - Number of " + key + " test cases failed: </font>" + metaInfo.getFailedCount()+ "<br/>";
     	     }
     	     
     	     String email_body = "Hi Team,"+ "<br/>" + "<br/>" +"Please see attached acceptance test results"+ "<br/>" + "<br/>" +environment+ "<br/>" + "<br/>"+"<b> High Level Results</b>" + "<br/>" + HighLevelResults + "<br/>" + "<br/>" +"Thanks,"+ "<br/>" +"QA Team";
     	     writer.println("email_body = " + email_body);
     	     writer.close();
           
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @AfterScenario
    public void runAfterEachScenario() {
        //deleteAllCookies();
    }
}