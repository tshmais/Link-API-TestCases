Meta:
@User
@Create_User_Positive_scenarios
@User_Positive
@ReportName User_Positive
@Link

Narrative:
In order to test Create_User service
As a tester
I want to make sure all return the code 201
                                  
Scenario:TC-001_USER_Positive: Create User using valid data for new user
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123",
 "emailAddress": "Generated-Email",
 "phoneNo": "877-555-123412345678",
 "cellNo": "877-555-123412345678",
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
Then the service response should be: 201



Scenario:TC-002_USER_Positive: Create User using valid data to Validate maximum limitation
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123412 User123412 User123412 User123412 5",
 "emailAddress": "Generated-Email",
 "phoneNo": "123456789 1234567890",
 "cellNo": "123456789 1234567890",
 "facebookUserId": "",
 "gender": "M",
 "timezone": "America/New_York",
 "locale": "en_US",
 "credentials": 
   {
    "loginProvider": "LINK",
    "loginProviderId": "Generated-Email",
    "passwordText": "P@ssw0rdP@ssw0rd",
    "loginProviderToken": ""
   }
}
Then the service response should be: 201

Scenario:TC-003_USER_Positive: Create User using valid data to Validate minimum limitation
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "1",
 "emailAddress": "Generated-Email",
 "phoneNo": "1",
 "cellNo": "1",
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
Then the service response should be: 201


Scenario:TC-004_USER_Positive: Create User using special character
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "יי",
 "emailAddress": "Generated-Email",
 "phoneNo": "111122222222",
 "cellNo": "12222222222222",
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
Then the service response should be: 201

Scenario:TC-005_USER_Positive: Create User - Validate Password without special character 
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "יי",
 "emailAddress": "Generated-Email",
 "phoneNo": "111122222222",
 "cellNo": "12222222222222",
 "facebookUserId": "",
 "gender": "M",
 "timezone": "America/New_York",
 "locale": "en_US",
 "credentials": 
   {
    "loginProvider": "LINK",
    "loginProviderId": "Generated-Email",
    "passwordText": "Passwr0rd",
    "loginProviderToken": ""
   }
}
Then the service response should be: 201

