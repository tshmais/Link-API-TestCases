Meta:
@Get Avilable Timezones
@Get Avilable Timezones scenario
@Get Avilable Timezones
@ReportName Get Avilable Timezones
@Link

Scenario: TC-001_Get Avilable Timezones.
Given service method is get
When the service url is: Get_Avilable_Timezones
And add to the header Content-Type with value application/json
Then the service response should be: 200
