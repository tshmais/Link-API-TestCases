Meta:
@Breeds
@Get_All_Breeds_scenario
@Breeds
@ReportName Breeds
@Link

Scenario: TC-001_Get All Breeds
Given Create new user
And Login with valid credentials
And service method is get
When the service url is: Get_All_Breeds
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200

