Meta:
@Get Avilable Locales
@Get Avilable Locales_scenario
@Get Avilable Locales
@ReportName Get Avilable Locales
@Link


Scenario: TC-001_Get Avilable Locales.
Given service method is get
When the service url is: Get_Avilable_Locales
And add to the header Content-Type with value application/json
Then the service response should be: 200