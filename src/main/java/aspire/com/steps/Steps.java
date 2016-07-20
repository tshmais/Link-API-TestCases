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
	public static String Date;
	public String ZipCode;
	public String Location;
	public String deviceId;
	Gson gson = new Gson();
	MysqlConnector dbConn = new MysqlConnector();
	public List<String> dataList = new ArrayList<String>();
	public String JsonValue;
	public String JsonValue2;


	// Create Data
	int i;
	public String User_Email;
	public String access_token;
	public String user_id;
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
	
	
	
	
	 String buildName = System.getProperty("buildName");
//	 String ReportName = System.getProperty("Report_Name");
//	 String CSVName = ReportName.replaceFirst(".html", ".csv");
		


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
		URL = URL.replaceFirst("\\[parameter\\]", param);

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
		URL = URL.replaceFirst("\\[parameter\\]", response2);

		reqHandler.setRequestUrl(URL);

		ASReport.getInstance().append(URL);
		System.out.println("The URL is: " + URL);
	}

	
	@When("service url equals : $url with $params parameters")
	@Then("service url equals : $url with $params parameters")
	public void setServicesURLwithtwoParametrs(String url , int  params)
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
		URL = URL.replaceFirst("\\[parameter1\\]", user_id);
		
		for (int p = 1; p <= params; p++) {
			switch (p) {
            case 1:  id = resp1;
                     break;
            case 2: id = resp2;
                     break;
            case 3:  id = resp3;
                     break;}
	 
		URL = URL.replaceFirst("\\[param"+p+"\\]", id);
		}
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

		if (json.contains("Generated-macid")) {
			int range = (99999 - 10000);
			int newrand = (int) (Math.random() * range) + 10000;
			String MAC_ID = "000567A" + newrand;

			json = json.replace("Generated-macid", MAC_ID);
		}
		reqHandler.setRequestBody(json);
		System.out.println(json);

		if (json.contains("LoginID")) {

			json = json.replace("LoginID", user_id);
		}
			if (json.contains("collarID")) {

				json = json.replace("collarID", Generated_ID);

		}
//			if (json.contains("device_Id")) {
//
//				json = json.replace("device_Id", Generated_device_ID);
//
//		}
			if (json.contains("device_Id")) {

				json = json.replace("device_Id", Generated_device_ID);

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
	
	@When("Retrieve first id from response")
	@Then("Retrieve first id from response")
	public void RetrieveJsonItemFirstID() throws JSONException {
		// JsonReader.GenerateJson("sql_get_all_users");

		String first_id = "$.id";
		String StringjsonResponse = jsonResponse.toString();
		resp1 = JsonPath.parse(StringjsonResponse).read(first_id,
				String.class);
		System.err.println("The token for the created item is: " + resp1);
	}
	
	@When("Retrieve second id from response")
	@Then("Retrieve second id from response")
	public void RetrieveJsonItemsecondID() throws JSONException {
		// JsonReader.GenerateJson("sql_get_all_users");

		String second_id = "$.id";
		String StringjsonResponse = jsonResponse.toString();
		resp2 = JsonPath.parse(StringjsonResponse).read(second_id,
				String.class);
		System.err.println("The token for the created item is: " + resp2);
	}

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

		reqHandler.setRequestHeader(name, access_token);
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

	@Given("Login with valid cridintials")
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

	}

	@Given("Create new user")
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

	@Given("I want to open a connection to MySQL DB")
	@Then("I want to open a connection to MySQL DB")
	public void connect2MySQL() throws ClassNotFoundException, SQLException {

		assertThat(dbConn.dbOpenConn(), Matchers.equalTo(true));
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
		getQuery = getQuery.replaceFirst("\\[parameter\\]", JsonValue);
		dataList = dbConn.ExecuteAPIQuery(getQuery);
	}

	@When("Retrieve Json path $expression response")
	@Then("Retrieve Json path $expression response")
	public void RetrieveJsonvalue(String expression) throws JSONException {
		// JsonReader.GenerateJson("sql_get_all_users");

		JsonValue = JsonPath.parse(StringjsonResponse).read(expression,
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

	@Then("json path $expression should be equal:$expected")
	@When("json path $expression should be equal:$expected")
	public void getItemfromDB(String expression, int expec)
			throws JSONException {
		// JsonReader.GenerateJson("sql_get_all_users");
		String result = JsonPath.parse(StringjsonResponse).read(expression,
				String.class);
		String expected = dataList.get(expec);
		Assert.assertEquals(result.trim(), expected);

	}

	@Then("print the value")
	public void print() {
		String expected = dataList.get(0);
		System.err.println("New value is : " + expected);
	}

	// /////////////////////////////////////////////++++++ Create Data
	// ++++++///////////////////////////////////////////////////

	/*
	 * @When("we set DataSetBody with :$jsonbody")
	 * 
	 * @Then("we set DataSetBody with :$jsonbody") public void
	 * setJsonBodySetData(String jsonbody) throws UnsupportedEncodingException {
	 * 
	 * 
	 * if (jsonbody.contains("Generated-Email")) { String emailAddress1 =
	 * EnvirommentManager.getInstance().getProperty( "User_Email_Address");
	 * String emails []; emails = emailAddress1.split(",");
	 * 
	 * for (int x = 0; x < emails.length; x++) { for (int j = 0; j <
	 * emails[x].length(); j++) {
	 * 
	 * jsonbody = jsonbody.replace("Generated-Email", emails[x]);
	 * 
	 * }
	 * 
	 * } reqHandler.setRequestBody(jsonbody); System.out.print(jsonbody); } }
	 */

	@Given("Create users to url: $url with body: $body with method $method")
	public void createnthItems(String url1, String body1, String method1)
			throws URISyntaxException, ClientProtocolException, IOException {

		int items1 = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_users")));
		writedata_user("Users");
		writedata_user(user_email_file);
		// prepare URL
		/*
		 * String emailAddress1 = EnvirommentManager.getInstance()
		 * .getProperty("User_Email_Address");
		 */

		// emails = emailAddress1.split(",");

		for (int i = 1; i <= items1; i++) {
			create_Users(items1, url1, body1, method1, i);

		}

	}

	@Given("Create users to url : $url with body: $body with method $method and dogs for each user and the same start with $name")
	public void Create_Users_with_Dogs(String url1, String body1,
			 String method1, String Dog_Name)
			throws URISyntaxException, ClientProtocolException, IOException {
		int items1 = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_users")));
		int dogs = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_dogs")));
		writedata_user("Users With Dogs");
		writedata_user_other(user_email_file, dog_ID_file);
		for (int i = 1; i <= items1; i++) {

			createUserswithdogs(items1, url1, body1, method1, dogs,
					Dog_Name, i);

		}
	}

	@Given("Create users to url : $url with body: $body with method $method and BaseStations for each user")
	public void Create_Users_with_BaseStation(String url1, String body1,
			 String method1) throws URISyntaxException,
			ClientProtocolException, IOException {
		int items1 = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_users")));
		int basestations = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_basestations")));
		writedata_user("Users With BaseStations");
		writedata_user_other(user_email_file, basestarion_ID_file);
		for (int i = 1; i <= items1; i++) {

			createUserswithbaseStation(items1, url1, body1, method1,
					basestations, i);

		}

	}

	@Given("Create users to url : $url with body: $body with method $method and collars for each user")
	public void Create_Users_with_collars(String url1, String body1,
			 String method1) throws URISyntaxException,
			ClientProtocolException, IOException {
		int items1 = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_users")));
		int collars = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_collars")));
		writedata_user("Users With Collars");
		writedata_user_other(user_email_file, collar_ID_file);

		for (int i = 1; i <= items1; i++) {

			createUserswithcollars(items1, url1, body1, method1,
					collars, i);

		}

	}

	@Given("Create users to url : $url with body: $body with method $method with collars and basestations for each user")
	public void Create_Users_with_collarsAnd_Basestations(String url1,
			String body1, String method1)
			throws URISyntaxException, ClientProtocolException, IOException {
		int items1 = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_users")));
		int basestations = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_basestations")));
		int collars = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_collars")));
		writedata_user("Users with BaseStations and collars");

		for (int i = 1; i <= items1; i++) {

			createUserswithcollarsAnd_Basestations(items1, url1, body1,
					 method1, collars, basestations, i);

		}

	}

	@Given("Create users to url : $url with body : $body with method $method with dogs start with $Name and collars and basestations for each user")
	public void Create_Users_with_Dogs_collarsAnd_Basestations(String url1,
			String body1, String method1, String Dog_name)
			throws URISyntaxException, ClientProtocolException, IOException {
		int items1 = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_users")));
		int dogs = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_dogs")));
		int basestations = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_basestations")));
		int collars = Integer.parseInt(String.format(EnvirommentManager
				.getInstance().getProperty("Number_Of_collars")));

		writedata_user("Users with Dogs BaseStations and Collars");

		for (int i = 1; i <= items1; i++) {

			createUserswith_dogs_collarsAnd_Basestations(items1, url1, body1,
					 method1, dogs, Dog_name, collars, basestations,
					i);

		}

	}

	private void create_Users(int items, String url, String body,
			String method, int i) throws URISyntaxException,
			ClientProtocolException, IOException {
		String name = "Content-Type";
		String value = "application/json";
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

		URL = String.format(EnvirommentManager.getInstance().getProperty(url),
				getRootUrl());
		reqHandler.setRequestUrl(URL);
		ASReport.getInstance().append(URL);
		reqHandler.setRequestHeader(name, value);
		String user_useremail = EnvirommentManager.getInstance().getProperty("User_name");
		String jsonbody = EnvirommentManager.getInstance().getProperty(body);
		User_Email = user_useremail + i + "@LinkAKC.com";

		if (jsonbody.contains("Generated-Email")) {

			jsonbody = jsonbody.replace("Generated-Email", User_Email);
			reqHandler.setRequestBody(jsonbody);
			System.out.println(jsonbody);
			CloseableHttpResponse resp = reqHandler.execute(myResponse);
			jsonResponse = parsers.asJson(resp);
			System.err.println(jsonResponse);

			writedata_user(User_Email);

		}

	}

	private void createUserswithdogs(int items, String url, String body,
			String method, int Dogs, String Dog_Name, int i)
			throws URISyntaxException, ClientProtocolException, IOException {

		String name = "Content-Type";
		String value = "application/json";
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

		URL = String.format(EnvirommentManager.getInstance().getProperty(url),
				getRootUrl());
		reqHandler.setRequestUrl(URL);
		ASReport.getInstance().append(URL);
		reqHandler.setRequestHeader(name, value);

		String jsonbody = EnvirommentManager.getInstance().getProperty(body);
		String user_dogemail = EnvirommentManager.getInstance().getProperty("User_name_with_dogs");

		User_Email = user_dogemail + i + "@LinkAKC.com";

		if (jsonbody.contains("Generated-Email")) {

			jsonbody = jsonbody.replace("Generated-Email", User_Email);
			reqHandler.setRequestBody(jsonbody);
			System.out.println(jsonbody);
			CloseableHttpResponse resp = reqHandler.execute(myResponse);
			jsonResponse = parsers.asJson(resp);
			System.err.println(jsonResponse);
		}
		for (int z = 1; z <= Dogs; z++) {

			login();
			create_dog(method, Dog_Name, z, i);

		}

	}

	private void createUserswithbaseStation(int items, String url, String body,
			 String method, int BaseStations, int i)
			throws URISyntaxException, ClientProtocolException, IOException {

		String name = "Content-Type";
		String value = "application/json";
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

		URL = String.format(EnvirommentManager.getInstance().getProperty(url),
				getRootUrl());
		reqHandler.setRequestUrl(URL);
		ASReport.getInstance().append(URL);
		reqHandler.setRequestHeader(name, value);

		String jsonbody = EnvirommentManager.getInstance().getProperty(body);
		String user_BaseStationemail = EnvirommentManager.getInstance().getProperty("User_name_with_baseStations");
		User_Email = user_BaseStationemail + i + "@LinkAKC.com";

		if (jsonbody.contains("Generated-Email")) {

			jsonbody = jsonbody.replace("Generated-Email", User_Email);
			reqHandler.setRequestBody(jsonbody);
			System.out.println(jsonbody);
			CloseableHttpResponse resp = reqHandler.execute(myResponse);
			jsonResponse = parsers.asJson(resp);
			System.err.println(jsonResponse);
		}
		for (int x = 1; x <= BaseStations; x++) {

			login();
			Create_BaseStation(url, method);

		}

	}

	private void createUserswithcollars(int items, String url, String body,
			 String method, int collars, int i)
			throws URISyntaxException, ClientProtocolException, IOException {

		String name = "Content-Type";
		String value = "application/json";
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

		URL = String.format(EnvirommentManager.getInstance().getProperty(url),
				getRootUrl());
		reqHandler.setRequestUrl(URL);
		ASReport.getInstance().append(URL);
		reqHandler.setRequestHeader(name, value);

		String jsonbody = EnvirommentManager.getInstance().getProperty(body);
		String user_collaremail = EnvirommentManager.getInstance().getProperty("User_name_with_collars");
		User_Email = user_collaremail + i + "@LinkAKC.com";

		if (jsonbody.contains("Generated-Email")) {

			jsonbody = jsonbody.replace("Generated-Email", User_Email);
			reqHandler.setRequestBody(jsonbody);
			System.out.println(jsonbody);
			CloseableHttpResponse resp = reqHandler.execute(myResponse);
			jsonResponse = parsers.asJson(resp);
			System.err.println(jsonResponse);
		}
		for (int x = 1; x <= collars; x++) {

			login();
			Create_Collars(url, method);

		}

	}

	private void createUserswithcollarsAnd_Basestations(int items, String url,
			String body, String method, int collars,
			int basestations, int i) throws ClientProtocolException,
			URISyntaxException, IOException {
		String name = "Content-Type";
		String value = "application/json";
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

		URL = String.format(EnvirommentManager.getInstance().getProperty(url),
				getRootUrl());
		reqHandler.setRequestUrl(URL);
		ASReport.getInstance().append(URL);
		reqHandler.setRequestHeader(name, value);

		String jsonbody = EnvirommentManager.getInstance().getProperty(body);
		String user_collar_base_email = EnvirommentManager.getInstance().getProperty("User_name_with_collars_baseStation");
		User_Email = user_collar_base_email + i + "@LinkAKC.com";

		if (jsonbody.contains("Generated-Email")) {

			jsonbody = jsonbody.replace("Generated-Email", User_Email);
			reqHandler.setRequestBody(jsonbody);
			System.out.println(jsonbody);
			CloseableHttpResponse resp = reqHandler.execute(myResponse);
			jsonResponse = parsers.asJson(resp);
			System.err.println(jsonResponse);

		}
		writedata_user_other(user_email_file, collar_ID_file);
		for (int x = 1; x <= collars; x++) {

			login();
			Create_Collars(url, method);

		}

		writedata_user_other(user_email_file, basestarion_ID_file);

		for (int y = 1; y <= basestations; y++) {

			login();
			Create_BaseStation(url, method);

		}

	}

	private void createUserswith_dogs_collarsAnd_Basestations(int items,
			String url, String body, String method, int dogs,
			String dog_name, int collars, int basestations, int i)
			throws ClientProtocolException, URISyntaxException, IOException {
		String name = "Content-Type";
		String value = "application/json";
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

		URL = String.format(EnvirommentManager.getInstance().getProperty(url),
				getRootUrl());
		reqHandler.setRequestUrl(URL);
		ASReport.getInstance().append(URL);
		reqHandler.setRequestHeader(name, value);

		String jsonbody = EnvirommentManager.getInstance().getProperty(body);
		String user_Dog_collar_base_mail = EnvirommentManager.getInstance().getProperty("User_name_with_dogs_collars_baseStation");
		User_Email = user_Dog_collar_base_mail + i + "@LinkAKC.com";

		if (jsonbody.contains("Generated-Email")) {

			jsonbody = jsonbody.replace("Generated-Email", User_Email);
			reqHandler.setRequestBody(jsonbody);
			System.out.println(jsonbody);
			CloseableHttpResponse resp = reqHandler.execute(myResponse);
			jsonResponse = parsers.asJson(resp);
			System.err.println(jsonResponse);

		}

		writedata_user_other(user_email_file, collar_ID_file);
		for (int x = 1; x <= collars; x++) {

			login();
			Create_Collars(url, method);

		}
		writedata_user_other(user_email_file, basestarion_ID_file);

		for (int y = 1; y <= basestations; y++) {

			login();
			Create_BaseStation(url, method);

		}

		writedata_user_other(user_email_file, dog_ID_file);

		for (int z = 1; z <= dogs; z++) {

			login();
			create_dog(method, dog_name, z, i);

		}

	}

	public void login() throws URISyntaxException, ClientProtocolException,
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
			json = json.replace("UserEmail", User_Email);
		}

		reqHandler.setRequestBody(json);
		System.out.println(json);
		CloseableHttpResponse resp = reqHandler.execute(myResponse);
		jsonResponse = parsers.asJson(resp);
		System.err.println(jsonResponse);
		String StringjsonResponse = jsonResponse.toString();

		String expression = "$.access_token";
		access_token = "bearer"
				+ " "
				+ JsonPath.parse(StringjsonResponse).read(expression,
						String.class);
		System.err
				.println("The token for the created item is: " + access_token);

		String expression2 = "$.userId";
		user_id = JsonPath.parse(StringjsonResponse).read(expression2,
				String.class);
	}

	public void create_dog(String method, String Dog_Name, int z, int i)
			throws URISyntaxException, ParseException, IOException {
		String name = "Content-Type";
		String value = "application/json";
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

		URL = String.format(
				EnvirommentManager.getInstance().getProperty(
						"Add_New_Dog_service"), getRootUrl());
		URL = URL.replaceFirst("\\[parameter\\]", user_id);
		reqHandler.setRequestUrl(URL);
		ASReport.getInstance().append(URL);
		reqHandler.setRequestHeader(name, value);
		reqHandler.setRequestHeader("Authorization", access_token);
		String jsonbody = EnvirommentManager.getInstance().getProperty(
				"createdogbody");

		String Dog_Name1 = Dog_Name + i + z;

		if (jsonbody.contains("Generated-name")) {

			jsonbody = jsonbody.replace("Generated-name", Dog_Name1);
			reqHandler.setRequestBody(jsonbody);
			System.out.println(jsonbody);
			CloseableHttpResponse resp = reqHandler.execute(myResponse);
			jsonResponse = parsers.asJson(resp);
			System.err.println(jsonResponse);
			String StringjsonResponse = jsonResponse.toString();
			String expression2 = "$.id";
			String Dog_id = JsonPath.parse(StringjsonResponse).read(
					expression2, String.class);
			writedata_user_other(User_Email, Dog_id);

		}

	}

	public void Create_BaseStation(String url, String method)
			throws URISyntaxException, ClientProtocolException, IOException {

		String name = "Content-Type";
		String value = "application/json";
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

		URL = String.format(
				EnvirommentManager.getInstance().getProperty(
						"Add_New_BaseStation_service"), getRootUrl());
		URL = URL.replaceFirst("\\[parameter\\]", user_id);
		reqHandler.setRequestUrl(URL);
		ASReport.getInstance().append(URL);
		reqHandler.setRequestHeader(name, value);
		reqHandler.setRequestHeader("Authorization", access_token);
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
			String StringjsonResponse = jsonResponse.toString();
			String expression2 = "$.id";
			String baseStation_id = JsonPath.parse(StringjsonResponse).read(
					expression2, String.class);
			writedata_user_other(User_Email, baseStation_id);
		}

	}

	public void Create_Collars(String url, String method)
			throws URISyntaxException, ClientProtocolException, IOException {

		String name = "Content-Type";
		String value = "application/json";
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

		URL = String.format(
				EnvirommentManager.getInstance().getProperty(
						"Add_New_collars_service"), getRootUrl());
		URL = URL.replaceFirst("\\[parameter\\]", user_id);
		reqHandler.setRequestUrl(URL);
		ASReport.getInstance().append(URL);
		reqHandler.setRequestHeader(name, value);
		reqHandler.setRequestHeader("Authorization", access_token);
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
			String StringjsonResponse = jsonResponse.toString();
			String expression2 = "$.id"; 
			String Collar_ID = JsonPath.parse(StringjsonResponse).read(
					expression2, String.class);
			 Generated_ID = Collar_ID;
			 String expression3 = "$.deviceId"; 
				String Collar_Device_ID = JsonPath.parse(StringjsonResponse).read(
						expression3, String.class);
				 Generated_device_ID = Collar_Device_ID;
			
			writedata_user_other(User_Email, Collar_ID);

		}

	}


	public void writedata_user(String name) throws FileNotFoundException {
		String buildName = System.getProperty("buildName");
		 String ReportName = System.getProperty("Report_Name");
		 String CSVName = ReportName == null? null : ReportName.replaceFirst(".html", ".csv");
		 if (CSVName == null) {
			CSVName = "Extracted data file " + buildName + ".csv";}
		StringBuilder sb = new StringBuilder();
		sb.append(name);
		sb.append(',');
		try (FileWriter fw = new FileWriter(AspireReport.getInstance().getReportDataManager().getReportPath() + File.separator + "akctest", true);
				BufferedWriter bw = new BufferedWriter(fw);
				PrintWriter out = new PrintWriter(bw)) {
			out.println(sb.toString());
			// more code
		} catch (IOException e) {
			// exception handling left as an exercise for the reader
		}
		// pw.write(sb.toString());
		// pw.close();
		System.err.println("Write the data to csv file is done!");

	}


	public void writedata_user_other(String name, String Dog_id)
			throws FileNotFoundException {
		String buildName = System.getProperty("buildName");
		 String ReportName = System.getProperty("Report_Name");
		 String CSVName = ReportName == null? null : ReportName.replaceFirst(".html", ".csv");
		 if (CSVName == null) {
			CSVName = "Extracted data file " + buildName + ".csv";}
		StringBuilder sb = new StringBuilder();
		sb.append(name);
		sb.append(',');
		sb.append(Dog_id);
		sb.append(',');
		try (FileWriter fw = new FileWriter(AspireReport.getInstance().getReportDataManager().getReportPath() + File.separator + "akctest", true);
				BufferedWriter bw = new BufferedWriter(fw);
				PrintWriter out = new PrintWriter(bw)) {
			out.println(sb.toString());
			// more code
		} catch (IOException e) {
			// exception handling left as an exercise for the reader
		}
		// pw.write(sb.toString());
		
		System.err.println("Write the data to csv file is done!");
		

	}

}
