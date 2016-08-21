Meta:
@User
@Create_User_Negative_scenarios
@User_Negative
@ReportName User_Negative
@Link

Narrative:
In order to test New_Collar service
As a tester
I want to make sure all return the code 4xx

Scenario: TC-001_USER_Negative: Verify Create User service using empty data for name
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "",
 "emailAddress": "Generated-Email",
 "phoneNo": "877-555-1234",
 "cellNo": "877-555-1234",
 "facebookUserId": "",
 "gender": "M",
 "timezone": "America/New_York",
 "locale": "en_US",
 "credentials": 
   {
    "loginProvider": "LINK",
    "loginProviderId": "Generated-Email",
    "passwordText": "P@ssw0rd",
    "loginProviderToken": ""
   }
}
Then the service response should be: 409


Scenario: TC-002_USER_Negative: Verify Create User service using empty data for email Address
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123",
 "emailAddress": "",
 "phoneNo": "877-555-1234",
 "cellNo": "877-555-1234",
 "facebookUserId": "",
 "gender": "M",
 "timezone": "America/New_York",
 "locale": "en_US",
 "credentials": 
   {
    "loginProvider": "LINK",
    "loginProviderId": "Generated-Email",
    "passwordText": "P@ssw0rd",
    "loginProviderToken": ""
   }
}
Then the service response should be: 409

Scenario: TC-004_USER_Negative: Verify Create User service using empty data for gender
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123",
 "emailAddress": "Generated-Email",
 "phoneNo": "877-555-1234",
 "cellNo": "877-555-1234",
 "facebookUserId": "",
 "gender": "",
 "timezone": "America/New_York",
 "locale": "en_US",
 "credentials": 
   {
    "loginProvider": "LINK",
    "loginProviderId": "Generated-Email",
    "passwordText": "P@ssw0rd",
    "loginProviderToken": ""
   }
}
Then the service response should be: 201

Scenario: TC-005_USER_Negative: Verify Create User service using empty data for timezone
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
	"name": "User123",
	"emailAddress": "Generated-Email",
	"phoneNo": "877-555-1234",
	"cellNo": "877-555-1234",
	"facebookUserId": "",
 "gender": "F",
 "timezone": "",
	"locale": "en_US",
	"credentials": 
	  {
	   "loginProvider": "LINK",
	   "loginProviderId": "Generated-Email",
	   "passwordText": "P@ssw0rd",
	   "loginProviderToken": ""
	  }
}
Then the service response should be: 201

Scenario:TC-006_USER_Negative: Verify Create User service using empty data for locale
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123",
 "emailAddress": "Generated-Email",
 "phoneNo": "877-555-1234",
 "cellNo": "877-555-1234",
 "facebookUserId": "",
 "gender": "F",
 "timezone": "America/New_York",
 "locale": "",
 "credentials": 
   {
    "loginProvider": "LINK",
    "loginProviderId": "Generated-Email",
    "passwordText": "P@ssw0rd",
    "loginProviderToken": ""
   }
}
Then the service response should be: 201

Scenario: TC-007_USER_Negative: Verify Create User service using empty data for loginProvider
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123",
 "emailAddress": "Generated-Email",
 "phoneNo": "877-555-1234",
 "cellNo": "877-555-1234",
 "facebookUserId": "",
 "gender": "F",
 "timezone": "America/New_York",
 "locale": "en_US",
 "credentials": 
   {
    "loginProvider": "",
    "loginProviderId": "Generated-Email",
    "passwordText": "P@ssw0rd",
    "loginProviderToken": ""
   }
}
Then the service response should be: 409

Scenario: TC-008_USER_Negative: Verify Create User service using empty data for loginProviderId
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123",
 "emailAddress": "Generated-Email",
 "phoneNo": "877-555-1234",
 "cellNo": "877-555-1234",
 "facebookUserId": "",
 "gender": "F",
 "timezone": "America/New_York",
 "locale": "en_US",
 "credentials": 
   {
    "loginProvider": "LINK",
    "loginProviderId": "",
    "passwordText": "P@ssw0rd",
    "loginProviderToken": ""
   }
}
Then the service response should be: 409

Scenario: TC-009_USER_Negative: Verify Create User service using empty data for passwordText
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123",
 "emailAddress": "Generated-Email",
 "phoneNo": "877-555-1234",
 "cellNo": "877-555-1234",
 "facebookUserId": "",
 "gender": "F",
 "timezone": "America/New_York",
 "locale": "en_US",
 "credentials": 
   {
    "loginProvider": "LINK",
   "loginProviderId": "Generated-Email",
    "passwordText": "",
    "loginProviderToken": ""
   }
}
Then the service response should be: 400


Scenario: TC-011_USER_Negative: Verify Create User service using invalid data  for email Address
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123",
 "emailAddress": "Generated-Email",
 "phoneNo": "877-555-1234",
 "cellNo": "877-555-1234",
 "facebookUserId": "",
 "gender": "#",
 "timezone": "America/New_York",
 "locale": "en_US",
 "credentials": 
   {
    "loginProvider": "LINK",
    "loginProviderId": "Generated-Email",
    "passwordText": "P@ssw0rd",
    "loginProviderToken": ""
   }
}
Then the service response should be: 409

Scenario: TC-014_USER_Negative: Verify Create User service using invalid data  for timezone
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123",
 "emailAddress": "Generated-Email",
 "phoneNo": "877-555-1234",
 "cellNo": "877-555-1234",
 "facebookUserId": "",
 "gender": "M",
 "timezone": "America/New_Yorkm",
 "locale": "en_US",
 "credentials": 
   {
    "loginProvider": "LINK",
    "loginProviderId": "Generated-Email",
    "passwordText": "P@ssw0rd",
    "loginProviderToken": ""
   }
}
Then the service response should be: 409


Scenario: TC-015_USER_Negative: Verify Create User service using invalid data  for locale
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123",
 "emailAddress": "Generated-Email",
 "phoneNo": "877-555-1234",
 "cellNo": "877-555-1234",
 "facebookUserId": "",
 "gender": "M",
 "timezone": "America/New_York",
 "locale": "en_USz",
 "credentials": 
   {
    "loginProvider": "LINK",
    "loginProviderId": "Generated-Email",
    "passwordText": "P@ssw0rd",
    "loginProviderToken": ""
   }
}
Then the service response should be: 409

Scenario: TC-016_USER_Negative: Verify Create User service using invalid data  for loginProvider
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123",
 "emailAddress": "Generated-Email",
 "phoneNo": "877-555-1234",
 "cellNo": "877-555-1234",
 "facebookUserId": "",
 "gender": "M",
 "timezone": "America/New_York",
 "locale": "en_USz",
 "credentials": 
   {
    "loginProvider": "LINK@",
    "loginProviderId": "Generated-Email",
    "passwordText": "P@ssw0rd",
    "loginProviderToken": ""
   }
}
Then the service response should be: 409

Scenario: TC-017_USER_Negative: Verify Create User service using invalid data  for loginProviderId
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123",
 "emailAddress": "Generated-Email",
 "phoneNo": "877-555-1234",
 "cellNo": "877-555-1234",
 "facebookUserId": "",
 "gender": "M",
 "timezone": "America/New_York",
 "locale": "en_USz",
 "credentials": 
   {
    "loginProvider": "LINK",
    "loginProviderId": "#Generated-Email",
    "passwordText": "P@ssw0rd",
    "loginProviderToken": ""
   }
}
Then the service response should be: 409

Scenario:TC-018_USER_Negative: Verify Create User service using invalid data  for passwordText
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123",
 "emailAddress": "Generated-Email",
 "phoneNo": "877-555-1234",
 "cellNo": "877-555-1234",
 "facebookUserId": "",
 "gender": "M",
 "timezone": "America/New_York",
 "locale": "en_USz",
 "credentials": 
   {
    "loginProvider": "LINK",
    "loginProviderId": "#Generated-Email",
    "passwordText": " ",
    "loginProviderToken": ""
   }
}
Then the service response should be: 400


Scenario:TC-020_USER_Negative: Verify Create User service using invalid data  for all prameters  
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "",
 "emailAddress": "",
 "phoneNo": "",
 "cellNo": "",
 "facebookUserId": "",
 "gender": "",
 "timezone": "",
 "locale": "",
 "credentials": 
   {
    "loginProvider": "",
    "loginProviderId": "",
    "passwordText": "",
    "loginProviderToken": ""
   }
}
Then the service response should be: 409