package aspire.com.steps;

import static org.hamcrest.MatcherAssert.assertThat;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.http.HttpEntity;
import org.apache.http.ParseException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.hamcrest.Matchers;
import org.jbehave.core.annotations.Given;
import org.jbehave.core.annotations.Then;
import org.jbehave.core.annotations.When;
import org.json.JSONException;
import org.json.JSONObject;
import org.junit.Assert;
import org.skyscreamer.jsonassert.JSONAssert;

import aspire.com.util.MysqlConnector;

import com.aspire.automationReport.ASReport;
import com.aspire.automationReport.AspireReport;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.jayway.jsonpath.JsonPath;

import jo.aspire.api.automationUtil.HttpRequestHandler;
import jo.aspire.api.automationUtil.MethodEnum;
import jo.aspire.api.automationUtil.MethodEnum.Method;
import jo.aspire.generic.EnvirommentManager;
import jo.aspire.generic.Parsers;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.PrintWriter;

public class Steps {
	private static String JsonResponse = null;
	HttpRequestHandler reqHandler = HttpRequestHandler.getInstance();
	Parsers parsers = new Parsers();
	String URL, myResponse = "myResponse";
	JsonElement jsonResponse;
	public String emailAddress;
	public String StringjsonResponse;
	public String response;
	public String response2;
	public String response3;
	private String params;
	String First_one;
	String Second_one;
	String Third_one;
	String Folder;
	String Signature;
	String getfirebaseToken;
	String getdeviceID;

	Gson gson = new Gson();
	MysqlConnector dbConn = new MysqlConnector();
	Create_Data_Steps cds = new Create_Data_Steps();
	public List<String> dataList = new ArrayList<String>();
	public String[] TagsKey;
	public String JsonValue;
	public String JsonValue2;
	public String user_id_file = "User ID";
	public String user_email_file = "User_email_address";
	public String dog_ID_file = "Dog ID";
	public String collar_ID_file = "Collar ID";
	public String basestarion_ID_file = "Base Station ID";
	public String resp1;
	public String resp2;
	public String resp3;
	String id;
	String Generated_ID;
	String Generated_device_ID;
	String Generated_Mac_ID;

	// String ReportName = System.getProperty("Report_Name");
	// String CSVName = ReportName.replaceFirst(".html", ".csv");

	private String getRootUrl() {

		String root_url = System.getProperty("ROOT_URL");
		if (root_url == null) {
			root_url = EnvirommentManager.getInstance().getProperty("ROOT_URL");
		}
		System.out.println("ROOT_URL: " + root_url);
		return root_url;
	}

	@When("the service url is: $url")
	@Given("the service url is: $url")
	public void setServiceURL(String url) throws URISyntaxException {

		if (url.toLowerCase().startsWith("http://www")
				|| url.toLowerCase().startsWith("https://www")) {
			URL = url;
		} else if (url.startsWith("%s")) {
			URL = String.format(url, getRootUrl());
		} else {
			URL = String.format(
					EnvirommentManager.getInstance().getProperty(url),
					getRootUrl());
		}

		reqHandler.setRequestUrl(URL);
		ASReport.getInstance().append(URL);
		System.out.println("The URL is: " + URL);
	}

	@When("the service url equal: $url with $param")
	@Then("the service url equal: $url with $param")
	public void setServicesURLwithParametr(String url, String param)
			throws URISyntaxException {
		if (url.toLowerCase().startsWith("http://www")
				|| url.toLowerCase().startsWith("https://www")) {
			URL = url;
		} else if (url.startsWith("%s")) {
			URL = String.format(url, getRootUrl());
		} else {
			URL = String.format(
					EnvirommentManager.getInstance().getProperty(url),
					getRootUrl());
		}
		URL = URL.replaceFirst("\\[parameter1\\]", param);

		reqHandler.setRequestUrl(URL);

		ASReport.getInstance().append(URL);
		System.out.println("The URL is: " + URL);
	}

	@When("service url equal : $url")
	@Then("service url equal : $url")
	public void setServicesURLwithParametr2(String url)
			throws URISyntaxException {
		if (url.toLowerCase().startsWith("http://www")
				|| url.toLowerCase().startsWith("https://www")) {
			URL = url;
		} else if (url.startsWith("%s")) {
			URL = String.format(url, getRootUrl());
		} else {
			URL = String.format(
					EnvirommentManager.getInstance().getProperty(url),
					getRootUrl());
		}
		URL = URL.replaceFirst("\\[parameter1\\]", response2);

		reqHandler.setRequestUrl(URL);

		ASReport.getInstance().append(URL);
		System.out.println("The URL is: " + URL);
	}

	@Given("service method is $method")
	@When("service method is $method")
	@Then("service method is $method")
	public void setMethod(String method) {
		Method methodName;
		switch (method) {
		case "get":
			methodName = Method.GET;
			break;
		case "put":
			methodName = Method.PUT;
			break;
		case "post":
			methodName = Method.POST;
			break;
		case "delete":
			methodName = Method.DELETE;
			break;
		default:
			methodName = Method.GET;
			break;
		}

		reqHandler.createNewRequest(methodName, myResponse);
	}

	@Given("add to the header $name with value $value")
	@When("add to the header $name with value $value")
	@Then("add to the header $name with value $value")
	public void setHeader(String name, String value) {
		reqHandler.setRequestHeader(name, value);
	}

	@When("we set Body with $json")
	@Then("we set Body with $json")
	public void setJsonBody(String json) throws UnsupportedEncodingException {

		if (json.equalsIgnoreCase("null")) {
			json = "";
		}
		if (json.contains("Generated-Email")) {
			emailAddress = "user"
					+ Integer.toString((int) Math.round(Math.random() * 99999))
					+ "@linkbyakc.com";
			json = json.replace("Generated-Email", emailAddress);
		}

		if (json.contains("Generated-deviceId")) {
			int range = (99999 - 10000);
			int newrand = (int) (Math.random() * range) + 10000;
			String Device_ID = "2345678" + newrand;

			json = json.replace("Generated-deviceId", Device_ID);
		}

		if (json.contains("Generated_deviceId")) {
			int range = (9999999 - 10000);
			int newrand = (int) (Math.random() * range) + 10000;
			String deviceId = "2345678" + newrand;
			getdeviceID = deviceId;
			json = json.replace("Generated_deviceId", deviceId);
		}

		if (json.contains("Same_Device_ID")) {

			String deviceId = getdeviceID;
			json = json.replace("Same_Device_ID", deviceId);
		}

		if (json.contains("Same_firebaseToken")) {

			String deviceId = getfirebaseToken;
			json = json.replace("Same_firebaseToken", deviceId);
		}

		if (json.contains("Generated_firebaseToken")) {
			int range = (9999999 - 10000);
			int newrand = (int) (Math.random() * range) + 10000;
			String firebaseToken = "token5678" + newrand;
			getfirebaseToken = firebaseToken;
			json = json.replace("Generated_firebaseToken", firebaseToken);
		}

		if (json.contains("Generated-macid")) {
			int range = (99999 - 10000);
			int newrand = (int) (Math.random() * range) + 10000;
			String MAC_ID = "000567A" + newrand;

			json = json.replace("Generated-macid", MAC_ID);
		}

		if (json.contains("UserID")) {

			json = json.replace("UserID", response2);
		}

		if (json.contains("collar_ID")) {

			json = json.replace("collar_ID", Generated_ID);
		}

		if (json.contains("Device_Id")) {

			json = json.replace("Device_Id", Generated_device_ID);

		}

		if (json.contains("Base_Id")) {

			json = json.replace("Base_Id", Generated_ID);

		}
		if (json.contains("Mac_Id")) {

			json = json.replace("Mac_Id", Generated_Mac_ID);

		}

		if (json.contains("Dog_Id")) {

			json = json.replace("Dog_Id", Generated_ID);

		}

		if (json.contains("LoginID")) {

			json = json.replace("LoginID", cds.user_id);
		}
		if (json.contains("collarID")) {

			json = json.replace("collarID", cds.Generated_ID);

		}

		if (json.contains("device_Id")) {

			json = json.replace("device_Id", cds.Generated_device_ID);

		}
		if (json.contains("Same_User_Email")) {

			json = json.replace("Same_User_Email", emailAddress);

		}
		if (json.contains("First_DeviceId")) {

			json = json.replace("First_DeviceId", dataList.get(0));
		}

		if (json.contains("Second_DeviceId")) {

			json = json.replace("Second_DeviceId", dataList.get(1));
		}

		if (json.contains("Third_DeviceId")) {

			json = json.replace("Third_DeviceId", dataList.get(2));

		}

		if (json.contains("generated_access_token")) {
			String access_token = EnvirommentManager.getInstance().getProperty(
					"FB_Access_Token");

			json = json.replace("generated_access_token", access_token);

		}

		if (json.contains("First_Tag")) {

			json = json.replace("First_Tag", TagsKey[0]);

		}

		if (json.contains("Second_Tag")) {

			json = json.replace("Second_Tag", TagsKey[1]);

		}

		if (json.contains("Third_Tag")) {

			json = json.replace("Third_Tag", TagsKey[2]);

		}

		if (json.contains("Fourth_Tag")) {

			json = json.replace("Fourth_Tag", TagsKey[3]);

		}

		if (json.contains("Generated_folder")) {

			json = json.replace("Generated_folder", Folder);

		}

		if (json.contains("Generated_signature")) {

			json = json.replace("Generated_signature", Signature);

		}
		
		if (json.contains("ID")) {

			json = json.replace("ID", resp1);

		}
		
		if (json.contains("First_id")) {

			json = json.replace("First_id", resp1);

		}
		if (json.contains("Second_id")) {

			json = json.replace("Second_id", resp2);

		}
		
		
		if (json.contains("Generated_RefreshToken")) {

			json = json.replace("Generated_RefreshToken", response3);
		}

		reqHandler.setRequestBody(json);
		System.out.println(json);

	}

	@When("the service response should be: $status")
	@Then("the service response should be: $status")
	public void checkStatusCode(Integer status) {
		try {
			CloseableHttpResponse resp = reqHandler.execute(myResponse);
			jsonResponse = parsers.asJson(resp);
			System.err.println(jsonResponse);
			System.err.println(resp.getStatusLine().getStatusCode());

			StringjsonResponse = jsonResponse.toString();

			assertThat(resp.getStatusLine().getStatusCode(),
					org.hamcrest.CoreMatchers.is(status));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Then("json path $expression should not exist.")
	public void jsonPathShouldNotExist(String expression) {

		String result = null;
		result = JsonPath.parse(jsonResponse.toString()).read(expression,
				String.class);

		Assert.assertNull(result);
	}

	@When("Retrieve json path $expression response")
	@Then("Retrieve json path $expression response")
	public void RetrieveJsonItem(String expression) throws JSONException {
		// JsonReader.GenerateJson("sql_get_all_users");

		response = "bearer"
				+ " "
				+ JsonPath.parse(StringjsonResponse).read(expression,
						String.class);
		System.err.println("The token for the created item is: " + response);
	}
	//

	@When("Retrieve user id $expression response")
	@Then("Retrieve user id $expression response")
	public void RetrieveuserID(String expression) throws JSONException {
		// JsonReader.GenerateJson("sql_get_all_users");

		response2 = JsonPath.parse(StringjsonResponse).read(expression,
				String.class);
		System.err.println("The token for the created item is: " + response2);
	}

	@When("Retrieve tags response")
	@Then("Retrieve tags response")
	public void RetrieveTags() throws JSONException {
		// JsonReader.GenerateJson("sql_get_all_users");

		String Tags = JsonPath.parse(StringjsonResponse).read("tags",
				String.class);
		TagsKey = Tags.split(",");

	}

	@When("Retrieve folder response")
	@Then("Retrieve folder response")
	public void folder() throws JSONException {
		// JsonReader.GenerateJson("sql_get_all_users");

		Folder = JsonPath.parse(StringjsonResponse)
				.read("folder", String.class);

	}

	@When("Retrieve signature response")
	@Then("Retrieve signature response")
	public void signature() throws JSONException {
		// JsonReader.GenerateJson("sql_get_all_users");

		Signature = JsonPath.parse(StringjsonResponse).read("signature",
				String.class);

	}

	@When("Retrieve first id from response")
	@Then("Retrieve first id from response")
	public void RetrieveJsonItemFirstID() throws JSONException {
		// JsonReader.GenerateJson("sql_get_all_users");

		String first_id = "$.id";
		resp1 = JsonPath.parse(StringjsonResponse).read(first_id, String.class);
		System.err.println("The first id is: " + resp1);
	}
	
	

	@When("Retrieve second id from response")
	@Then("Retrieve second id from response")
	public void RetrieveJsonItemsecondID() throws JSONException {
		// JsonReader.GenerateJson("sql_get_all_users");

		String second_id = "$.id";
		resp2 = JsonPath.parse(StringjsonResponse)
				.read(second_id, String.class);
		System.err.println("The second id is: " + resp2);
	}

	@When("Retrieve third id from response")
	@Then("Retrieve third id from response")
	public void RetrieveJsonItemthirdID() throws JSONException {
		// JsonReader.GenerateJson("sql_get_all_users");

		String second_id = "$.id";
		resp3 = JsonPath.parse(StringjsonResponse)
				.read(second_id, String.class);
		System.err.println("The second id is: " + resp3);
	}

	@Given("the service url changes to: $url with $param")
	@When("the service url changes to: $url with $param")
	@Then("the service url changes to: $url with $param")
	public void setServicesURLwithParam(String url, String param)
			throws URISyntaxException {
		if (url.toLowerCase().startsWith("http://www")
				|| url.toLowerCase().startsWith("https://www")) {
			URL = url;
		} else if (url.startsWith("%s")) {
			URL = String.format(url, EnvirommentManager.getInstance()
					.getProperty("ROOT_URL"));
		} else {
			URL = String.format(
					EnvirommentManager.getInstance().getProperty(url),
					EnvirommentManager.getInstance().getProperty("ROOT_URL"));
		}
		URL = URL.replaceFirst("\\[parameter\\]", param);

		reqHandler.setRequestUrl(URL);

		ASReport.getInstance().append(URL);
		System.out.println("The URL is: " + URL);
	}
	
	

	@When("service url equals : $url with $parameter1 and $parameter2 and $parameter3")
	@Then("service url equals : $url with $parameter1 and $parameter2 and $parameter3")
	public void setServicesURLwithParameters(String url, String param1,
			String param2, String param3) throws URISyntaxException {
		if (url.toLowerCase().startsWith("http://www")
				|| url.toLowerCase().startsWith("https://www")) {
			URL = url;
		} else if (url.startsWith("%s")) {
			URL = String.format(url, getRootUrl());
		} else {
			URL = String.format(
					EnvirommentManager.getInstance().getProperty(url),
					getRootUrl());
		}
		URL = URL.replaceFirst("\\[parameter1\\]", param1);
		URL = URL.replaceFirst("\\[parameter2\\]", param2);
		URL = URL.replaceFirst("\\[parameter3\\]", param3);

		ASReport.getInstance().append(URL);
		System.out.println("The URL is: " + URL);
	}

	@When("service url equals : $url with $parameter1 and $parameter2")
	@Then("service url equals : $url with $parameter1 and $parameter2")
	public void setServicesURLwithParameters(String url, String param1,
			String param2) throws URISyntaxException {
		if (url.toLowerCase().startsWith("http://www")
				|| url.toLowerCase().startsWith("https://www")) {
			URL = url;
		} else if (url.startsWith("%s")) {
			URL = String.format(url, getRootUrl());
		} else {
			URL = String.format(
					EnvirommentManager.getInstance().getProperty(url),
					getRootUrl());
		}
		URL = URL.replaceFirst("\\[parameter1\\]", param1);
		URL = URL.replaceFirst("\\[parameter2\\]", param2);

		ASReport.getInstance().append(URL);
		System.out.println("The URL is: " + URL);
	}

	@When("service url equals : $url with $params parameters")
	@Then("service url equals : $url with $params parameters")
	public void setServicesURLwithtwoParametrs(String url, int params)
			throws URISyntaxException {
		if (url.toLowerCase().startsWith("http://www")
				|| url.toLowerCase().startsWith("https://www")) {
			URL = url;
		} else if (url.startsWith("%s")) {
			URL = String.format(url, getRootUrl());
		} else {
			URL = String.format(
					EnvirommentManager.getInstance().getProperty(url),
					getRootUrl());
		}
		URL = URL.replaceFirst("\\[parameter1\\]", response2);

		for (int p = 1; p <= params; p++) {
			switch (p) {
			case 1:
				id = resp1;
				break;
			case 2:
				id = resp2;
				break;
			case 3:
				id = resp3;
				break;
			}

			URL = URL.replaceFirst("\\[param" + p + "\\]", id);
		}
		reqHandler.setRequestUrl(URL);

		ASReport.getInstance().append(URL);
		System.out.println("The URL is: " + URL);
	}

	@When("The service url equals: $url with $user with $First_Param")
	@Then("The service url equals: $url with $user with $First_Param")
	public void setServicesURLwithTwoParametrsa(String url, String User,
			String First_Param) throws URISyntaxException {
		if (url.toLowerCase().startsWith("http://www")
				|| url.toLowerCase().startsWith("https://www")) {
			URL = url;
		} else if (url.startsWith("%s")) {
			URL = String.format(url, getRootUrl());
		} else {
			URL = String.format(
					EnvirommentManager.getInstance().getProperty(url),
					getRootUrl());
		}

		if (User.equalsIgnoreCase("Same_User_ID")) {
			URL = URL.replaceFirst("\\[parameter1\\]", response2);

		}
		if (User.equalsIgnoreCase("Empty_User_ID")) {
			URL = URL.replaceFirst("\\[parameter1\\]", "");
		}
		if (User.equalsIgnoreCase("Not_Exist_User_ID")) {
			URL = URL.replaceFirst("\\[parameter1\\]", "100000000");
		}
		if (User.equalsIgnoreCase("Existing_User_ID")) {
			URL = URL.replaceFirst("\\[parameter1\\]", "1");
		}
		if (First_Param.equalsIgnoreCase("Same_ID")) {
			URL = URL.replaceFirst("\\[parameter2\\]", resp1);
		}
		if (First_Param.equalsIgnoreCase("Not_Exist_ID")) {
			URL = URL.replaceFirst("\\[parameter2\\]", "100000000");
		}
		if (First_Param.equalsIgnoreCase("Empty_ID")) {
			URL = URL.replaceFirst("\\[parameter2\\]", "");
		}
		if (First_Param.equalsIgnoreCase("Existing_ID")) {
			URL = URL.replaceFirst("\\[parameter2\\]", "1");
		}
		if (First_Param.equalsIgnoreCase("Same_Collar_ID")) {
			URL = URL.replaceFirst("\\[parameter2\\]", resp2);
		}
		reqHandler.setRequestUrl(URL);

		ASReport.getInstance().append(URL);
		System.out.println("The URL is: " + URL);
	}

	@When("URL equal: $url with $user")
	@Then("URL equal: $url with $user")
	public void setServicesURLwithOneParametrsa(String url, String User)
			throws URISyntaxException {
		if (url.toLowerCase().startsWith("http://www")
				|| url.toLowerCase().startsWith("https://www")) {
			URL = url;
		} else if (url.startsWith("%s")) {
			URL = String.format(url, getRootUrl());
		} else {
			URL = String.format(
					EnvirommentManager.getInstance().getProperty(url),
					getRootUrl());
		}

		if (User.equalsIgnoreCase("Same_User_ID")) {
			URL = URL.replaceFirst("\\[parameter1\\]", response2);

		}
		if (User.equalsIgnoreCase("Empty_User_ID")) {
			URL = URL.replaceFirst("\\[parameter1\\]", "");
		}
		if (User.equalsIgnoreCase("Not_Exist_User_ID")) {
			URL = URL.replaceFirst("\\[parameter1\\]", "100000000");
		}
		if (User.equalsIgnoreCase("Existing_User_ID")) {
			URL = URL.replaceFirst("\\[parameter1\\]", "1");
		}

		reqHandler.setRequestUrl(URL);

		ASReport.getInstance().append(URL);
		System.out.println("The URL is: " + URL);
	}

	@When("The service url equal : $url with $user and $First_Param and $Second_Param")
	@Then("The service url equal : $url with $user and $First_Param and $Second_Param")
	public void setServicesURLwithThreeParametrsa(String url, String User,
			String First_Param, String Second_Param) throws URISyntaxException {
		if (url.toLowerCase().startsWith("http://www")
				|| url.toLowerCase().startsWith("https://www")) {
			URL = url;
		} else if (url.startsWith("%s")) {
			URL = String.format(url, getRootUrl());
		} else {
			URL = String.format(
					EnvirommentManager.getInstance().getProperty(url),
					getRootUrl());
		}

		if (User.equalsIgnoreCase("Same_User_ID")) {
			URL = URL.replaceFirst("\\[parameter1\\]", response2);
		}
		if (User.equalsIgnoreCase("Empty_User_ID")) {
			URL = URL.replaceFirst("\\[parameter1\\]", "");

		}
		if (User.equalsIgnoreCase("Invalid_User_ID")) {
			URL = URL.replaceFirst("\\[parameter1\\]", "@");
		}
		if (User.equalsIgnoreCase("Not_Exist_User_ID")) {
			URL = URL.replaceFirst("\\[parameter1\\]", "100000000");
		}
		if (User.equalsIgnoreCase("Existing_User_ID")) {
			URL = URL.replaceFirst("\\[parameter1\\]", "1");
		}
		if (First_Param.equalsIgnoreCase("Same_First_ID")) {
			URL = URL.replaceFirst("\\[parameter2\\]", resp1);
		}

		if (First_Param.equalsIgnoreCase("Not_Exist_First_ID")) {
			URL = URL.replaceFirst("\\[parameter2\\]", "100000000");
		}
		if (First_Param.equalsIgnoreCase("Existing_First_ID")) {
			URL = URL.replaceFirst("\\[parameter2\\]", "1");
		}
		if (First_Param.equalsIgnoreCase("Empty_First_ID")) {
			URL = URL.replaceFirst("\\[parameter2\\]", "");
		}
		if (First_Param.equalsIgnoreCase("Invalid_First_ID")) {
			URL = URL.replaceFirst("\\[parameter2\\]", "@");
		}
		if (Second_Param.equalsIgnoreCase("Same_Second_ID")) {
			URL = URL.replaceFirst("\\[parameter3\\]", resp2);
		}
		if (Second_Param.equalsIgnoreCase("Not_Exist_Second_ID")) {
			URL = URL.replaceFirst("\\[parameter3\\]", "100000000");
		}
		if (Second_Param.equalsIgnoreCase("Existing_Second_ID")) {
			URL = URL.replaceFirst("\\[parameter3\\]", "1");
		}
		if (Second_Param.equalsIgnoreCase("Empty_Second_ID")) {
			URL = URL.replaceFirst("\\[parameter3\\]", "");
		}
		if (Second_Param.equalsIgnoreCase("Invalid_Second_ID")) {
			URL = URL.replaceFirst("\\[parameter3\\]", "@");
		}
		reqHandler.setRequestUrl(URL);

		ASReport.getInstance().append(URL);
		System.out.println("The URL is: " + URL);
	}

	@When("set service url equals : $url with $parameter1")
	@Then("set service url equals : $url with $parameter1 ")
	public void setServicesURLwithParameters(String url, String param1)
			throws URISyntaxException {
		if (url.toLowerCase().startsWith("http://www")
				|| url.toLowerCase().startsWith("https://www")) {
			URL = url;
		} else if (url.startsWith("%s")) {
			URL = String.format(url, getRootUrl());
		} else {
			URL = String.format(
					EnvirommentManager.getInstance().getProperty(url),
					getRootUrl());
		}
		URL = URL.replaceFirst("\\[parameter1\\]", param1);

		ASReport.getInstance().append(URL);
		System.out.println("The URL is: " + URL);
	}

	// @When("the service url changes to: $url")
	// public void setServicesURL(String url) throws URISyntaxException {
	// if (url.toLowerCase().startsWith("http://www") ||
	// url.toLowerCase().startsWith("https://www")) {
	// URL = url;
	// } else if (url.startsWith("%s")) {
	// URL = String.format(url, EnvirommentManager.getInstance()
	// .getProperty("ROOT_URL"));
	// } else {
	// URL = String.format(
	// EnvirommentManager.getInstance().getProperty(url),
	// EnvirommentManager.getInstance().getProperty("ROOT_URL"));
	// }
	//
	// reqHandler.setRequestUrl(URL);
	//
	// ASReport.getInstance().append(URL);
	// }

	@When("add Session $name to Request header")
	@Then("add Session $name to Request header")
	public void addToken(String name) {

		reqHandler.setRequestHeader(name, response);
	}

	@When("add Session $name to Request headers")
	@Then("add Session $name to Request headers")
	public void addTokens(String name) {

		reqHandler.setRequestHeader(name, response);
	}

	@Given("url contains the parameter: $value")
	@When("url contains the parameter: $value")
	@Then("url contains the parameter: $value")
	public void addUrlParameters(String value) throws URISyntaxException {
		URL = URL.replaceFirst("\\[parameter]\\", value);
		reqHandler.setRequestUrl(URL);
		System.err.println("New URL with Parameter is : " + URL);

	}

	@Then("json node is $NodeName for $ArrayOrder order should equal:$expected")
	public void test(String NodeName, int ArrayOrder, String expected)
			throws JSONException {
		JsonElement result = jsonResponse.getAsJsonArray().get(ArrayOrder)
				.getAsJsonObject().get(NodeName);
		Assert.assertEquals(result.isJsonNull() ? "null" : result.getAsString()
				.trim(), expected);
	}

	@Then("json response should equal:$expected")
	public void setJsonBody1(String expected) throws JSONException {

		String expec = EnvirommentManager.getInstance().getProperty(expected);
		JSONAssert.assertEquals(StringjsonResponse, expec, false);

	}

	@Given("Login with valid credentials")
	@Then("Login with valid credentials")
	public void Login() throws URISyntaxException, ClientProtocolException,
			IOException {
		String name = "Content-Type";
		String value = "application/json";

		reqHandler.createNewRequest(Method.POST, myResponse);
		String url = "Login_service";
		URL = String.format(EnvirommentManager.getInstance().getProperty(url),
				getRootUrl());
		reqHandler.setRequestUrl(URL);
		ASReport.getInstance().append(URL);
		reqHandler.setRequestHeader(name, value);

		String json = EnvirommentManager.getInstance().getProperty(
				"LoginPayload");

		if (json.contains("UserEmail")) {
			json = json.replace("UserEmail", emailAddress);
		}

		reqHandler.setRequestBody(json);
		System.out.println(json);
		CloseableHttpResponse resp = reqHandler.execute(myResponse);
		jsonResponse = parsers.asJson(resp);
		System.err.println(jsonResponse);
		String StringjsonResponse = jsonResponse.toString();
		String expression = "$.access_token";
		response = "bearer"
				+ " "
				+ JsonPath.parse(StringjsonResponse).read(expression,
						String.class);
		System.err.println("The token for the created item is: " + response);

		String expression2 = "$.userId";
		response2 = JsonPath.parse(StringjsonResponse).read(expression2,
				String.class);
		String expression3 = "$.refresh_token";
		response3 = JsonPath.parse(StringjsonResponse).read(expression3,
				String.class);

	}

	@Given("Create new user")
	@Then("Create new user")
	public void Create_User() throws URISyntaxException,
			ClientProtocolException, IOException {
		String name = "Content-Type";
		String value = "application/json";

		reqHandler.createNewRequest(Method.POST, myResponse);
		String url = "Create_User_service";
		URL = String.format(EnvirommentManager.getInstance().getProperty(url),
				getRootUrl());
		reqHandler.setRequestUrl(URL);
		ASReport.getInstance().append(URL);
		reqHandler.setRequestHeader(name, value);

		String json = EnvirommentManager.getInstance().getProperty(
				"CreateUserPayload");
		if (json.equalsIgnoreCase("null")) {
			json = "";
		}
		if (json.contains("Generated-Email")) {
			emailAddress = "user"
					+ Integer.toString((int) Math.round(Math.random() * 99999))
					+ "@linkbyakc.com";
			json = json.replace("Generated-Email", emailAddress);
		}

		if (json.contains("Generated-deviceId")) {
			int range = (99999 - 10000);
			int newrand = (int) (Math.random() * range) + 10000;
			String Device_ID = "2345678" + newrand;

			json = json.replace("Generated-deviceId", Device_ID);
		}

		if (json.contains("Generated-macid")) {
			int range = (99999 - 10000);
			int newrand = (int) (Math.random() * range) + 10000;
			String mac_ID = "2345678" + newrand;

			json = json.replace("Generated-macid", mac_ID);
		}
		reqHandler.setRequestBody(json);
		System.out.println(json);

		CloseableHttpResponse resp = reqHandler.execute(myResponse);
		jsonResponse = parsers.asJson(resp);
		System.err.println(jsonResponse);

	}

	@Given("Check if FB user created")
	@Then("Check if FB user created")
	public void Create_FB_User() throws URISyntaxException,
			ClientProtocolException, IOException, ClassNotFoundException,
			SQLException {
		assertThat(dbConn.dbOpenConn(), Matchers.equalTo(true));
		String getQuery = String.format(EnvirommentManager.getInstance()
				.getProperty("Get_FB_User_ID"));
		dataList = dbConn.ExecuteAPIQuery(getQuery);

		if (dataList.isEmpty()) {
			String name = "Content-Type";
			String value = "application/json";

			reqHandler.createNewRequest(Method.POST, myResponse);
			String url = "Create_User_service";
			URL = String.format(
					EnvirommentManager.getInstance().getProperty(url),
					getRootUrl());
			reqHandler.setRequestUrl(URL);
			ASReport.getInstance().append(URL);
			reqHandler.setRequestHeader(name, value);

			String json = EnvirommentManager.getInstance().getProperty(
					"createFBuserbody");

			reqHandler.setRequestBody(json);
			System.out.println(json);

			CloseableHttpResponse resp = reqHandler.execute(myResponse);
			jsonResponse = parsers.asJson(resp);
			System.err.println(jsonResponse);
		}
	}

	@Given("Create new collar")
	@When("Create new collar")
	@Then("Create new collar")
	public void Create_collar() throws ClientProtocolException,
			URISyntaxException, IOException {
		String name = "Content-Type";
		String value = "application/json";
		reqHandler.createNewRequest(Method.POST, myResponse);

		URL = String.format(
				EnvirommentManager.getInstance().getProperty(
						"Add_New_collars_service"), getRootUrl());
		URL = URL.replaceFirst("\\[parameter1\\]", response2);
		reqHandler.setRequestUrl(URL);
		ASReport.getInstance().append(URL);
		reqHandler.setRequestHeader(name, value);
		reqHandler.setRequestHeader("Authorization", response);
		String jsonbody = EnvirommentManager.getInstance().getProperty(
				"createCollarbody");
		int range = (99999 - 10000);
		int newrand = (int) (Math.random() * range) + 10000;
		String Device_ID = "2345678" + newrand;
		System.err.println("The MacID for the created item is: " + Device_ID);

		if (jsonbody.contains("Generated-deviceid")) {

			jsonbody = jsonbody.replace("Generated-deviceid", Device_ID);
			reqHandler.setRequestBody(jsonbody);
			System.out.println(jsonbody);
			CloseableHttpResponse resp = reqHandler.execute(myResponse);
			jsonResponse = parsers.asJson(resp);
			System.err.println(jsonResponse);
			StringjsonResponse = jsonResponse.toString();
			String expression2 = "$.id";
			String Collar_ID = JsonPath.parse(StringjsonResponse).read(
					expression2, String.class);
			Generated_ID = Collar_ID;
			String expression3 = "$.deviceId";
			String Collar_Device_ID = JsonPath.parse(StringjsonResponse).read(
					expression3, String.class);
			Generated_device_ID = Collar_Device_ID;

		}
	}

	@Given("Create new dog")
	@When("Create new dog")
	@Then("Create new dog")
	public void Create_dog() throws URISyntaxException,
			ClientProtocolException, IOException {
		String name = "Content-Type";
		String value = "application/json";
		reqHandler.createNewRequest(Method.POST, myResponse);

		URL = String.format(
				EnvirommentManager.getInstance().getProperty(
						"Add_New_Dog_service"), getRootUrl());
		URL = URL.replaceFirst("\\[parameter1\\]", response2);
		reqHandler.setRequestUrl(URL);
		ASReport.getInstance().append(URL);
		reqHandler.setRequestHeader(name, value);
		reqHandler.setRequestHeader("Authorization", response);
		String jsonbody = EnvirommentManager.getInstance().getProperty(
				"createdogbody");

		String Dog_Name1 = "Pucy";

		if (jsonbody.contains("Generated-name")) {

			jsonbody = jsonbody.replace("Generated-name", Dog_Name1);
			reqHandler.setRequestBody(jsonbody);
			System.out.println(jsonbody);
			CloseableHttpResponse resp = reqHandler.execute(myResponse);
			jsonResponse = parsers.asJson(resp);
			System.err.println(jsonResponse);
			StringjsonResponse = jsonResponse.toString();
			String expression2 = "$.id";
			String Dog_id = JsonPath.parse(StringjsonResponse).read(
					expression2, String.class);
			Generated_ID = Dog_id;
		}
	}

	@Given("Create new BaseStation")
	@When("Create new BaseStation")
	public void Create_BaseStation() throws URISyntaxException,
			ClientProtocolException, IOException {
		String name = "Content-Type";
		String value = "application/json";
		reqHandler.createNewRequest(Method.POST, myResponse);

		URL = String.format(
				EnvirommentManager.getInstance().getProperty(
						"Add_New_BaseStation_service"), getRootUrl());
		URL = URL.replaceFirst("\\[parameter1\\]", response2);
		reqHandler.setRequestUrl(URL);
		ASReport.getInstance().append(URL);
		reqHandler.setRequestHeader(name, value);
		reqHandler.setRequestHeader("Authorization", response);
		String jsonbody = EnvirommentManager.getInstance().getProperty(
				"createBaseStationbody");
		int range = (99999 - 10000);
		int newrand = (int) (Math.random() * range) + 10000;
		String BaseStation_mac = "2345678" + newrand;
		System.err.println("The MacID for the created item is: "
				+ BaseStation_mac);

		if (jsonbody.contains("Generated-macid")) {

			jsonbody = jsonbody.replace("Generated-macid", BaseStation_mac);
			reqHandler.setRequestBody(jsonbody);
			System.out.println(jsonbody);
			CloseableHttpResponse resp = reqHandler.execute(myResponse);
			jsonResponse = parsers.asJson(resp);
			System.err.println(jsonResponse);
			StringjsonResponse = jsonResponse.toString();
			String expression2 = "$.id";
			String baseStation_id = JsonPath.parse(StringjsonResponse).read(
					expression2, String.class);
			Generated_ID = baseStation_id;
			String expression3 = "$.macAddrId";
			String baseStation_macAddrId = JsonPath.parse(StringjsonResponse)
					.read(expression3, String.class);
			Generated_Mac_ID = baseStation_macAddrId;
		}

	}

	@Given("I want to open a connection to MySQL DB")
	@When("I want to open a connection to MySQL DB")
	@Then("I want to open a connection to MySQL DB")
	public void connect2MySQL() throws ClassNotFoundException, SQLException {

		assertThat(dbConn.dbOpenConn(), Matchers.equalTo(true));
	}

	@Then("I want to close the MySQL DB connection")
	@When("I want to close the MySQL DB connection")
	public void closeMySQL() throws ClassNotFoundException, SQLException {

		assertThat(dbConn.dbcloseConn(), Matchers.equalTo(true));
	}

	@When("I want to pull the data from the DB using $query query")
	@Then("I want to pull the data from the DB using $query query")
	public void getDBData(String query) throws ClassNotFoundException,
			SQLException {

		String getQuery = String.format(EnvirommentManager.getInstance()
				.getProperty(query));
		dataList = dbConn.ExecuteAPIQuery(getQuery);
	}

	// to cheak ruselts from db
	@Then("I want to pull the data from the DB using $query query with ID equal $ID")
	public void getDBDatawithID(String query, String ID)
			throws ClassNotFoundException, SQLException {

		String getQuery = String.format(EnvirommentManager.getInstance()
				.getProperty(query));
		getQuery = getQuery.replaceFirst("\\[parameter\\]", ID);
		dataList = dbConn.ExecuteAPIQuery(getQuery);
	}

	@Then("I want to pull the data from the DB using $query query with response ID")
	@When("I want to pull the data from the DB using $query query with response ID")
	public void getDBDataRID(String query) throws ClassNotFoundException,
			SQLException {
		String getQuery = String.format(EnvirommentManager.getInstance()
				.getProperty(query));
		getQuery = getQuery.replaceFirst("\\[parameter\\]", response2);
		dataList = dbConn.ExecuteAPIQuery(getQuery);

	}

	@Then("I want to pull the data from the DB using $query query and response ID")
	@When("I want to pull the data from the DB using $query query and response ID")
	public void getDBDataID(String query) throws ClassNotFoundException,
			SQLException {
		String getQuery = String.format(EnvirommentManager.getInstance()
				.getProperty(query));
		getQuery = getQuery.replaceFirst("\\[parameter\\]", resp1);
		dataList = dbConn.ExecuteAPIQuery(getQuery);

	}

	@Then("I want to pull the data from DB using $query query and response ID")
	@When("I want to pull the data from DB using $query query and response ID")
	public void getDB_DataID(String query) throws ClassNotFoundException,
			SQLException {
		String getQuery = String.format(EnvirommentManager.getInstance()
				.getProperty(query));
		getQuery = getQuery.replaceFirst("\\[parameter\\]", resp2);
		dataList = dbConn.ExecuteAPIQuery(getQuery);

	}

	@When("Retrieve Json path $expression response")
	@Then("Retrieve Json path $expression response")
	public void RetrieveJsonvalue(String expression) throws JSONException {
		// JsonReader.GenerateJson("sql_get_all_users");

		response = JsonPath.parse(StringjsonResponse).read(expression,
				String.class);
		System.err.println("The value for the created item is: " + JsonValue);
	}

	@Then("json path $expression should equal:$expected")
	@When("json path $expression should equal:$expected")
	public void getItem(String expression, String expected)
			throws JSONException {
		// JsonReader.GenerateJson("sql_get_all_users");
		String result = JsonPath.parse(StringjsonResponse).read(expression,
				String.class);
		Assert.assertEquals(result.trim(), expected);

	}

	@Then("json path $expression should be : $expected")
	@When("json path $expression should be : $expected")
	public void getItemfromDB(String expression, int expec)
			throws JSONException {
		// JsonReader.GenerateJson("sql_get_all_users");
		String result = JsonPath.parse(StringjsonResponse).read(expression,
				String.class);
		String expected = dataList.get(expec);
		Assert.assertEquals(result.trim(), expected);

	}

	@Then("The Collar should be deleted")
	@When("The Collar should be deleted")
	public void AssertDeletedItem() throws JSONException {

		String expected = dataList.get(0);
		Assert.assertEquals("1", expected);

	}

	@Then("print the value")
	public void print() {
		String expected = dataList.get(0);
		System.err.println("New value is : " + expected);
	}

	// /////////////////////////////////////////////++++++ Create Data
	// ++++++///////////////////////////////////////////////////

	@Given("Create users to url: $url with body: $body")
	public void createnthItems(String url1, String body1)
			throws URISyntaxException, ClientProtocolException, IOException {

		int items1 = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_users")));
		cds.writedata_user_type("Users");
		cds.writedata_user(user_id_file, user_email_file, "Password");
		for (int i = 1; i <= items1; i++) {
			cds.create_Users(items1, url1, body1, i);

		}

	}

	@Given("Create users to url : $url with body: $body with dogs for each user and the same start with $name")
	public void Create_Users_with_Dogs(String url1, String body1,
			String Dog_Name) throws URISyntaxException,
			ClientProtocolException, IOException {
		int items1 = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_users")));
		int dogs = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_dogs")));
		cds.writedata_user_type("Users With Dogs");
		cds.writedata_user_other(user_id_file, user_email_file, dog_ID_file,
				"Password");
		for (int i = 1; i <= items1; i++) {

			cds.createUserswithdogs(items1, url1, body1, dogs, Dog_Name, i);

		}
	}
	
	@Given("Create users to url : $url with body: $body with apps for each user and the same start with $name")
	public void Create_Users_with_Apps(String url1, String body1,
			String App_Name) throws URISyntaxException,
			ClientProtocolException, IOException {
		int items1 = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_users")));
		int apps = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_apps")));
		cds.writedata_user_type("Users With Apps");
		cds.writedata_user_other(user_id_file, user_email_file, dog_ID_file,
				"Password");
		for (int i = 1; i <= items1; i++) {

			cds.createUserswithapps(items1, url1, body1, apps, App_Name, i);

		}
	}

	@Given("Create users to url : $url with body: $body with BaseStations for each user")
	public void Create_Users_with_BaseStation(String url1, String body1)
			throws URISyntaxException, ClientProtocolException, IOException {
		int items1 = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_users")));
		int basestations = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_basestations")));
		cds.writedata_user_type("Users With BaseStations");
		cds.writedata_user_other(user_id_file, user_email_file,
				basestarion_ID_file, "Password");
		for (int i = 1; i <= items1; i++) {

			cds.createUserswithbaseStation(items1, url1, body1, basestations, i);

		}

	}

	@Given("Create users to url : $url with body: $body with collars for each user")
	public void Create_Users_with_collars(String url1, String body1)
			throws URISyntaxException, ClientProtocolException, IOException {
		int items1 = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_users")));
		int collars = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_collars")));
		cds.writedata_user_type("Users With Collars");
		cds.writedata_user_other(user_id_file, user_email_file, collar_ID_file,
				"Password");

		for (int i = 1; i <= items1; i++) {

			cds.createUserswithcollars(items1, url1, body1, collars, i);

		}

	}

	@Given("Create users to url : $url with body: $body with collars and basestations for each user")
	public void Create_Users_with_collarsAnd_Basestations(String url1,
			String body1) throws URISyntaxException, ClientProtocolException,
			IOException {
		int items1 = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_users")));
		int basestations = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_basestations")));
		int collars = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_collars")));
		cds.writedata_user_type("Users with BaseStations and collars");

		for (int i = 1; i <= items1; i++) {

			cds.createUserswithcollarsAnd_Basestations(items1, url1, body1,
					collars, basestations, i);

		}

	}

	@Given("Create users to url : $url with body : $body with dogs start with $Name and collars and basestations for each user")
	public void Create_Users_with_Dogs_collarsAnd_Basestations(String url1,
			String body1, String Dog_name) throws URISyntaxException,
			ClientProtocolException, IOException {
		int items1 = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_users")));
		int dogs = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_dogs")));
		int basestations = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_basestations")));
		int collars = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_collars")));

		cds.writedata_user_type("Users with Dogs BaseStations and Collars");

		for (int i = 1; i <= items1; i++) {

			cds.createUserswith_dogs_collarsAnd_Basestations(items1, url1,
					body1, dogs, Dog_name, collars, basestations, i);

		}
	
	}
	
	
}
