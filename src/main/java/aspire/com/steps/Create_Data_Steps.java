package aspire.com.steps;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;

import jo.aspire.api.automationUtil.HttpRequestHandler;
import jo.aspire.api.automationUtil.MethodEnum.Method;
import jo.aspire.generic.EnvirommentManager;
import jo.aspire.generic.Parsers;

import org.apache.http.ParseException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;

import aspire.com.util.MysqlConnector;

import com.aspire.automationReport.ASReport;
import com.aspire.automationReport.AspireReport;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.jayway.jsonpath.JsonPath;

public class Create_Data_Steps {

	private static String JsonResponse = null;
	HttpRequestHandler reqHandler = HttpRequestHandler.getInstance();
	Parsers parsers = new Parsers();
	String URL, myResponse = "myResponse";
	JsonElement jsonResponse;

	public String StringjsonResponse;
	public String response;
	public String response2;

	Gson gson = new Gson();
	public String JsonValue;
	public String JsonValue2;

	// Create Data

	public String User_Email;
	public String access_token;
	public String user_id;
	public String user_email_file = "User_email_address";
	public String user_id_file = "User ID";
	public String dog_ID_file = "Dog ID";
	public String collar_ID_file = "Collar ID";
	public String basestarion_ID_file = "Base Station ID";
	String id;
	String Generated_ID;
	String Generated_device_ID;

	String buildName = System.getProperty("buildName");

	protected String getRootUrl() {

		String root_url = System.getProperty("ROOT_URL");
		if (root_url == null) {
			root_url = EnvirommentManager.getInstance().getProperty("ROOT_URL");
		}
		System.out.println("ROOT_URL: " + root_url);
		return root_url;
	}

	protected void create_Users(int items, String url, String body, int i)
			throws URISyntaxException, ClientProtocolException, IOException {
		String name = "Content-Type";
		String value = "application/json";
		reqHandler.createNewRequest(Method.POST, myResponse);

		URL = String.format(EnvirommentManager.getInstance().getProperty(url),
				getRootUrl());
		reqHandler.setRequestUrl(URL);
		ASReport.getInstance().append(URL);
		reqHandler.setRequestHeader(name, value);
		String user_useremail = EnvirommentManager.getInstance().getProperty(
				"User_name");
		String jsonbody = EnvirommentManager.getInstance().getProperty(body);
		User_Email = user_useremail + i + "@LinkAKC.com";

		if (jsonbody.contains("Generated-Email")) {

			jsonbody = jsonbody.replace("Generated-Email", User_Email);
			reqHandler.setRequestBody(jsonbody);
			System.out.println(jsonbody);
			CloseableHttpResponse resp = reqHandler.execute(myResponse);
			jsonResponse = parsers.asJson(resp);
			login();
			writedata_user(user_id, User_Email, "P@ssw0rd");

		}

	}

	protected void createUserswithdogs(int items, String url, String body,
			int Dogs, String Dog_Name, int i) throws URISyntaxException,
			ClientProtocolException, IOException {

		String name = "Content-Type";
		String value = "application/json";
		reqHandler.createNewRequest(Method.POST, myResponse);

		URL = String.format(EnvirommentManager.getInstance().getProperty(url),
				getRootUrl());
		reqHandler.setRequestUrl(URL);
		ASReport.getInstance().append(URL);
		System.out.println("The URL is: " + URL);

		reqHandler.setRequestHeader(name, value);

		String jsonbody = EnvirommentManager.getInstance().getProperty(body);
		String user_dogemail = EnvirommentManager.getInstance().getProperty(
				"User_name_with_dogs");

		User_Email = user_dogemail + i + "@LinkAKC.com";

		if (jsonbody.contains("Generated-Email")) {

			jsonbody = jsonbody.replace("Generated-Email", User_Email);
			reqHandler.setRequestBody(jsonbody);
			System.out.println(jsonbody);
			CloseableHttpResponse resp = reqHandler.execute(myResponse);
			jsonResponse = parsers.asJson(resp);

		}
		for (int z = 1; z <= Dogs; z++) {

			login();
			create_dog(Dog_Name, z, i);

		}

	}
	
	protected void createUserswithapps(int items, String url, String body,
			int Apps, String App_Name, int i) throws URISyntaxException,
			ClientProtocolException, IOException {

		String name = "Content-Type";
		String value = "application/json";
		reqHandler.createNewRequest(Method.POST, myResponse);

		URL = String.format(EnvirommentManager.getInstance().getProperty(url),
				getRootUrl());
		reqHandler.setRequestUrl(URL);
		ASReport.getInstance().append(URL);
		System.out.println("The URL is: " + URL);

		reqHandler.setRequestHeader(name, value);

		String jsonbody = EnvirommentManager.getInstance().getProperty(body);
		String user_appmail = EnvirommentManager.getInstance().getProperty(
				"User_name_with_apps");

		User_Email = user_appmail + i + "@LinkAKC.com";

		if (jsonbody.contains("Generated-Email")) {

			jsonbody = jsonbody.replace("Generated-Email", User_Email);
			reqHandler.setRequestBody(jsonbody);
			System.out.println(jsonbody);
			CloseableHttpResponse resp = reqHandler.execute(myResponse);
			jsonResponse = parsers.asJson(resp);

		}
		for (int z = 1; z <= Apps; z++) {

			login();
			create_app(App_Name, z, i);

		}

	}

	protected void createUserswithbaseStation(int items, String url,
			String body, int BaseStations, int i) throws URISyntaxException,
			ClientProtocolException, IOException {

		String name = "Content-Type";
		String value = "application/json";
		reqHandler.createNewRequest(Method.POST, myResponse);

		URL = String.format(EnvirommentManager.getInstance().getProperty(url),
				getRootUrl());
		reqHandler.setRequestUrl(URL);
		ASReport.getInstance().append(URL);
		reqHandler.setRequestHeader(name, value);

		String jsonbody = EnvirommentManager.getInstance().getProperty(body);
		String user_BaseStationemail = EnvirommentManager.getInstance()
				.getProperty("User_name_with_baseStations");
		User_Email = user_BaseStationemail + i + "@LinkAKC.com";

		if (jsonbody.contains("Generated-Email")) {

			jsonbody = jsonbody.replace("Generated-Email", User_Email);
			reqHandler.setRequestBody(jsonbody);
			System.out.println(jsonbody);
			CloseableHttpResponse resp = reqHandler.execute(myResponse);
			jsonResponse = parsers.asJson(resp);

		}
		for (int x = 1; x <= BaseStations; x++) {

			login();
			Create_BaseStation(url);

		}

	}

	protected void createUserswithcollars(int items, String url, String body,
			int collars, int i) throws URISyntaxException,
			ClientProtocolException, IOException {

		String name = "Content-Type";
		String value = "application/json";
		reqHandler.createNewRequest(Method.POST, myResponse);

		URL = String.format(EnvirommentManager.getInstance().getProperty(url),
				getRootUrl());
		reqHandler.setRequestUrl(URL);
		ASReport.getInstance().append(URL);
		reqHandler.setRequestHeader(name, value);

		String jsonbody = EnvirommentManager.getInstance().getProperty(body);
		String user_collaremail = EnvirommentManager.getInstance().getProperty(
				"User_name_with_collars");
		User_Email = user_collaremail + i + "@LinkAKC.com";

		if (jsonbody.contains("Generated-Email")) {

			jsonbody = jsonbody.replace("Generated-Email", User_Email);
			reqHandler.setRequestBody(jsonbody);
			System.out.println(jsonbody);
			CloseableHttpResponse resp = reqHandler.execute(myResponse);
			jsonResponse = parsers.asJson(resp);

		}
		for (int x = 1; x <= collars; x++) {

			login();
			Create_Collars(url);

		}

	}

	protected void createUserswithcollarsAnd_Basestations(int items,
			String url, String body, int collars, int basestations, int i)
			throws ClientProtocolException, URISyntaxException, IOException {
		String name = "Content-Type";
		String value = "application/json";
		reqHandler.createNewRequest(Method.POST, myResponse);

		URL = String.format(EnvirommentManager.getInstance().getProperty(url),
				getRootUrl());
		reqHandler.setRequestUrl(URL);
		ASReport.getInstance().append(URL);
		reqHandler.setRequestHeader(name, value);

		String jsonbody = EnvirommentManager.getInstance().getProperty(body);
		String user_collar_base_email = EnvirommentManager.getInstance()
				.getProperty("User_name_with_collars_baseStation");
		User_Email = user_collar_base_email + i + "@LinkAKC.com";

		if (jsonbody.contains("Generated-Email")) {

			jsonbody = jsonbody.replace("Generated-Email", User_Email);
			reqHandler.setRequestBody(jsonbody);
			System.out.println(jsonbody);
			CloseableHttpResponse resp = reqHandler.execute(myResponse);
			jsonResponse = parsers.asJson(resp);

		}
		writedata_user_other(user_id_file, user_email_file, collar_ID_file,
				"Password");
		for (int x = 1; x <= collars; x++) {

			login();
			Create_Collars(url);

		}

		writedata_user_other(user_id_file, user_email_file,
				basestarion_ID_file, "Password");

		for (int y = 1; y <= basestations; y++) {

			login();
			Create_BaseStation(url);

		}

	}

	protected void createUserswith_dogs_collarsAnd_Basestations(int items,
			String url, String body, int dogs, String dog_name, int collars,
			int basestations, int i) throws ClientProtocolException,
			URISyntaxException, IOException {
		String name = "Content-Type";
		String value = "application/json";
		reqHandler.createNewRequest(Method.POST, myResponse);

		URL = String.format(EnvirommentManager.getInstance().getProperty(url),
				getRootUrl());
		reqHandler.setRequestUrl(URL);
		ASReport.getInstance().append(URL);
		reqHandler.setRequestHeader(name, value);

		String jsonbody = EnvirommentManager.getInstance().getProperty(body);
		String user_Dog_collar_base_mail = EnvirommentManager.getInstance()
				.getProperty("User_name_with_dogs_collars_baseStation");
		User_Email = user_Dog_collar_base_mail + i + "@LinkAKC.com";

		if (jsonbody.contains("Generated-Email")) {

			jsonbody = jsonbody.replace("Generated-Email", User_Email);
			reqHandler.setRequestBody(jsonbody);
			System.out.println(jsonbody);
			CloseableHttpResponse resp = reqHandler.execute(myResponse);
			jsonResponse = parsers.asJson(resp);

		}

		writedata_user_other(user_id_file, user_email_file, collar_ID_file,
				"Password");
		for (int x = 1; x <= collars; x++) {

			login();
			Create_Collars(url);

		}
		writedata_user_other(user_id_file, user_email_file,
				basestarion_ID_file, "Password");

		for (int y = 1; y <= basestations; y++) {

			login();
			Create_BaseStation(url);

		}

		writedata_user_other(user_id_file, user_email_file, dog_ID_file,
				"Password");

		for (int z = 1; z <= dogs; z++) {

			login();
			create_dog(dog_name, z, i);

		}

	}

	protected void login() throws URISyntaxException, ClientProtocolException,
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

	protected void create_dog(String Dog_Name, int z, int i)
			throws URISyntaxException, ParseException, IOException {
		String name = "Content-Type";
		String value = "application/json";
		reqHandler.createNewRequest(Method.POST, myResponse);

		URL = String.format(
				EnvirommentManager.getInstance().getProperty(
						"Add_New_Dog_service"), getRootUrl());
		URL = URL.replaceFirst("\\[parameter1\\]", user_id);
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
			writedata_user_other(user_id, User_Email, Dog_id, "P@ssw0rd");

		}

	}

	
	protected void create_app(String App_Name, int z, int i)
			throws URISyntaxException, ParseException, IOException {
		String name = "Content-Type";
		String value = "application/json";
		reqHandler.createNewRequest(Method.POST, myResponse);

		URL = String.format(
				EnvirommentManager.getInstance().getProperty(
						"Add_User_App"), getRootUrl());
		URL = URL.replaceFirst("\\[parameter1\\]", user_id);
		reqHandler.setRequestUrl(URL);
		ASReport.getInstance().append(URL);
		reqHandler.setRequestHeader(name, value);
		reqHandler.setRequestHeader("Authorization", access_token);
		String jsonbody = EnvirommentManager.getInstance().getProperty(
				"createAppbody");

		String App_Name1 = App_Name + i + z;

		if (jsonbody.contains("Generated-name")) {

			jsonbody = jsonbody.replace("Generated-name", App_Name1);
			reqHandler.setRequestBody(jsonbody);}
		
		if (jsonbody.contains("Generated_firebaseToken")) {
			int range = (9999999 - 10000);
			int newrand = (int) (Math.random() * range) + 10000;
			String firebaseToken = "token5678" + newrand;
			
			jsonbody = jsonbody.replace("Generated_firebaseToken", firebaseToken);
		}
		
		if (jsonbody.contains("Generated_deviceId")) {
			int range = (9999999 - 10000);
			int newrand = (int) (Math.random() * range) + 10000;
			String deviceId = "2345678" + newrand;
	
			jsonbody = jsonbody.replace("Generated_deviceId", deviceId);
		}
		
		if (jsonbody.contains("Generated_userId")) {
			
	
			jsonbody = jsonbody.replace("Generated_userId", user_id);
			
		}
		

		reqHandler.setRequestBody(jsonbody);
		System.out.println(jsonbody);
		CloseableHttpResponse resp = reqHandler.execute(myResponse);
		jsonResponse = parsers.asJson(resp);
		System.err.println(jsonResponse);
		String StringjsonResponse = jsonResponse.toString();
		String expression2 = "$.id";
		String App_ID = JsonPath.parse(StringjsonResponse).read(
				expression2, String.class);
		writedata_user_other(user_id, User_Email, App_ID, "P@ssw0rd");
		
		
	

		}

	
	
	
	protected void Create_BaseStation(String url) throws URISyntaxException,
			ClientProtocolException, IOException {

		String name = "Content-Type";
		String value = "application/json";
		reqHandler.createNewRequest(Method.POST, myResponse);

		URL = String.format(
				EnvirommentManager.getInstance().getProperty(
						"Add_New_BaseStation_service"), getRootUrl());
		URL = URL.replaceFirst("\\[parameter1\\]", user_id);
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
			writedata_user_other(user_id, User_Email, baseStation_id,
					"P@ssw0rd");
		}

	}

	protected void Create_Collars(String url) throws URISyntaxException,
			ClientProtocolException, IOException {

		String name = "Content-Type";
		String value = "application/json";
		reqHandler.createNewRequest(Method.POST, myResponse);

		URL = String.format(
				EnvirommentManager.getInstance().getProperty(
						"Add_New_collars_service"), getRootUrl());
		URL = URL.replaceFirst("\\[parameter1\\]", user_id);
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

			writedata_user_other(user_id, User_Email, Collar_ID, "P@ssw0rd");

		}

	}

	protected void writedata_user(String U_id, String name, String Pass)
			throws FileNotFoundException {
		String buildName = System.getProperty("buildName");
		String ReportName = System.getProperty("Report_Name");
		String CSVName = ReportName == null ? null : ReportName.replaceFirst(
				".html", ".csv");
		if (CSVName == null) {
			CSVName = "Extracted data file " + buildName + ".csv";
		}
		StringBuilder sb = new StringBuilder();
		sb.append(U_id);
		sb.append(',');
		sb.append(name);
		sb.append(',');
		sb.append(Pass);
		sb.append(',');
		try (FileWriter fw = new FileWriter(AspireReport.getInstance()
				.getReportDataManager().getReportPath()
				+ File.separator + CSVName, true);
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

	protected void writedata_user_other(String U_id, String name,
			String Dog_id, String Pass) throws FileNotFoundException {
		String buildName = System.getProperty("buildName");
		String ReportName = System.getProperty("Report_Name");
		String CSVName = ReportName == null ? null : ReportName.replaceFirst(
				".html", ".csv");
		if (CSVName == null) {
			CSVName = "Extracted data file " + buildName + ".csv";
		}
		StringBuilder sb = new StringBuilder();
		sb.append(U_id);
		sb.append(',');
		sb.append(name);
		sb.append(',');
		sb.append(Pass);
		sb.append(',');
		sb.append(Dog_id);
		sb.append(',');
		try (FileWriter fw = new FileWriter(AspireReport.getInstance()
				.getReportDataManager().getReportPath()
				+ File.separator + CSVName, true);
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

	protected void writedata_user_type(String name)
			throws FileNotFoundException {
		String buildName = System.getProperty("buildName");
		String ReportName = System.getProperty("Report_Name");
		String CSVName = ReportName == null ? null : ReportName.replaceFirst(
				".html", ".csv");
		if (CSVName == null) {
			CSVName = "Extracted data file " + buildName + ".csv";
		}
		StringBuilder sb = new StringBuilder();
		sb.append(name);
		sb.append(',');

		try (FileWriter fw = new FileWriter(AspireReport.getInstance()
				.getReportDataManager().getReportPath()
				+ File.separator + CSVName, true);
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
