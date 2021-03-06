Meta:
@User
@Update_User_Profile_Positive_scenarios
@User_Positive
@ReportName User_Positive
@Link


Narrative:
In order to test Update User Service
As a tester
I want to make sure all return the code 2xx


Scenario: TC-001_USER_Positive: Update User using new valid data in url for User ID

Given Create new user
And Login with valid credentials
And service method is put
When service url equal : Update_User 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
    "id" : "UserID",
    "name" : "testaqa",
    "emailAddress" : "Same_User_Email",
    "phoneNo" : "877-444-1234",
    "cellNo" : "877-555-1234",
    "facebookUserId" : "",
    "loginProvider" : "LINK",
    "gender" : "M",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"
}
Then the service response should be: 200


Scenario: TC-002_USER_Positive: Update User using a matching data in body for User ID

Given Create new user
And Login with valid credentials
And service method is put
When service url equal : Update_User 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
    "id" : "UserID",
    "name" : "testaqa",
    "emailAddress" : "Same_User_Email",
    "phoneNo" : "877-444-1234",
    "cellNo" : "877-555-1234",
    "facebookUserId" : "",
    "loginProvider" : "LINK",
    "gender" : "M",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"
}

Then the service response should be: 200

Scenario: TC-003_USER_Positive: Update User using valid data for name

Given Create new user
And Login with valid credentials
And service method is put
When service url equal : Update_User 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
    "id" : "UserID",
    "name" : "testaqa",
    "emailAddress" : "Same_User_Email",
    "phoneNo" : "877-444-1234",
    "cellNo" : "877-555-1234",
    "facebookUserId" : "",
    "loginProvider" : "LINK",
    "gender" : "M",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"
}

Then the service response should be: 200


Scenario: TC-004_USER_Positive: Update User using valid data for emailAddress

Given Create new user
And Login with valid credentials
And service method is put
When service url equal : Update_User 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
    "id" : "UserID",
    "name" : "testaqa",
    "emailAddress" : "Same_User_Email",
    "phoneNo" : "877-444-1234",
    "cellNo" : "877-555-1234",
    "facebookUserId" : "",
    "loginProvider" : "LINK",
    "gender" : "M",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"
}

Then the service response should be: 200


Scenario: TC-005_USER_Positive: Update User using valid data for phoneNo

Given Create new user
And Login with valid credentials
And service method is put
When service url equal : Update_User 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
    "id" : "UserID",
    "name" : "testaqa",
    "emailAddress" : "Same_User_Email",
    "phoneNo" : "877-444-1234",
    "cellNo" : "877-555-1234",
    "facebookUserId" : "",
    "loginProvider" : "LINK",
    "gender" : "M",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"
}

Then the service response should be: 200


Scenario: TC-006_USER_Positive: Update User using valid data for cellNo

Given Create new user
And Login with valid credentials
And service method is put
When service url equal : Update_User 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
    "id" : "UserID",
    "name" : "testaqa",
    "emailAddress" : "Same_User_Email",
    "phoneNo" : "877-444-1234",
    "cellNo" : "877-555-1234",
    "facebookUserId" : "",
    "loginProvider" : "LINK",
    "gender" : "M",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"
}

Then the service response should be: 200

Scenario: TC-007_USER_Positive: Update User using valid data for gender

Given Create new user
And Login with valid credentials
And service method is put
When service url equal : Update_User 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
    "id" : "UserID",
    "name" : "testaqa",
    "emailAddress" : "Same_User_Email",
    "phoneNo" : "877-444-1234",
    "cellNo" : "877-555-1234",
    "facebookUserId" : "",
    "loginProvider" : "LINK",
    "gender" : "M",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"
}

Then the service response should be: 200


Scenario: TC-008_USER_Positive: Update User using valid data for passcode

Given Create new user
And Login with valid credentials
And service method is put
When service url equal : Update_User 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
    "id" : "UserID",
    "name" : "testaqa",
    "emailAddress" : "Same_User_Email",
    "phoneNo" : "877-444-1234",
    "cellNo" : "877-555-1234",
    "facebookUserId" : "",
    "loginProvider" : "LINK",
    "gender" : "M",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"
}

Then the service response should be: 200


Scenario: TC-009_USER_Positive: Update User using valid data for timezone

Given Create new user
And Login with valid credentials
And service method is put
When service url equal : Update_User 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
    "id" : "UserID",
    "name" : "testaqa",
    "emailAddress" : "Same_User_Email",
    "phoneNo" : "877-444-1234",
    "cellNo" : "877-555-1234",
    "facebookUserId" : "",
    "loginProvider" : "LINK",
    "gender" : "M",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"
}

Then the service response should be: 200


Scenario: TC-010_USER_Positive: Update User using valid data for locale

Given Create new user
And Login with valid credentials
And service method is put
When service url equal : Update_User 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
    "id" : "UserID",
    "name" : "testaqa",
    "emailAddress" : "Same_User_Email",
    "phoneNo" : "877-444-1234",
    "cellNo" : "877-555-1234",
    "facebookUserId" : "",
    "loginProvider" : "LINK",
    "gender" : "M",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"
}

Then the service response should be: 200

Scenario: TC-011_USER_Positive: Update User using valid data for version

Given Create new user
And Login with valid credentials
And service method is put
When service url equal : Update_User 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
    "id" : "UserID",
    "name" : "testaqa",
    "emailAddress" : "Same_User_Email",
    "phoneNo" : "877-444-1234",
    "cellNo" : "877-555-1234",
    "facebookUserId" : "",
    "loginProvider" : "LINK",
    "gender" : "M",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"
}

Then the service response should be: 200


Scenario: TC-012_USER_Positive: Update User User using valid data to Validate maximum limitation

Given Create new user
And Login with valid credentials
And service method is put
When service url equal : Update_User 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
    "id" : "UserID",
    "name" : "User123412 User123412 User123412 User123412 5",
    "emailAddress" : "Same_User_Email",
    "phoneNo" : "123456789 1234567890",
    "cellNo" : "123456789 1234567890",
    "facebookUserId" : "",
    "loginProvider" : "LINK",
    "gender" : "M",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"
}

Then the service response should be: 200


Scenario: TC-013_USER_Positive: Update User User using valid data to Validate minimum limitation

Given Create new user
And Login with valid credentials
And service method is put
When service url equal : Update_User 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
    "id" : "UserID",
    "name" : "1",
    "emailAddress" : "Same_User_Email",
    "phoneNo" : "1",
    "cellNo" : "1",
    "facebookUserId" : "",
    "loginProvider" : "LINK",
    "gender" : "M",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"
}

Then the service response should be: 200

Scenario: TC-014_USER_Positive: Update User using special character

Given Create new user
And Login with valid credentials
And service method is put
When service url equal : Update_User 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
    "id" : "UserID",
    "name" : "��",
    "emailAddress" : "Same_User_Email",
    "phoneNo" : "1",
    "cellNo" : "1",
    "facebookUserId" : "",
    "loginProvider" : "LINK",
    "gender" : "M",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"
}

Then the service response should be: 200