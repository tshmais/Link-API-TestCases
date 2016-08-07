Meta:
@User
@User_Profile_Positive_scenarios
@User_Positive
@ReportName User_Positive
@Link


Narrative:
In order to test Update User Service
As a tester
I want to make sure all return the code 2xx


Scenario: TC-001_USER_Negative: Verify Update User service using mismatching data in url and body for user ID

Given Create new user
And Login with valid cridintials
And service method is put
When service url equal : Update_User 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
    "id" : "1",
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

Then the service response should be: 409


Scenario: TC-002_USER_Negative: Verify Update User service using mismatching data for version

Given Create new user
And Login with valid cridintials
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
    "version" : "2"
}

Then the service response should be: 409

Scenario: TC-003_USER_Negative: Verify Update User service using empty value in for name

Given Create new user
And Login with valid cridintials
And service method is put
When service url equal : Update_User 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
    "id" : "UserID",
    "name" : "",
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

Then the service response should be: 409


Scenario: TC-004_USER_Negative: Verify Update User service using empty value in for emailAddress

Given Create new user
And Login with valid cridintials
And service method is put
When service url equal : Update_User 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
    "id" : "UserID",
    "name" : "testaqa",
    "emailAddress" : "",
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

Then the service response should be: 409


Scenario: TC-005_USER_Negative: Verify Update User service using empty value in for phoneNo

Given Create new user
And Login with valid cridintials
And service method is put
When service url equal : Update_User 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
    "id" : "UserID",
    "name" : "testaqa",
    "emailAddress" : "Same_User_Email",
    "phoneNo" : "",
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


Scenario: TC-006_USER_Negative: Verify Update User service using empty value in for cellNo

Given Create new user
And Login with valid cridintials
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
    "cellNo" : "",
    "facebookUserId" : "",
    "loginProvider" : "LINK",
    "gender" : "M",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"
}

Then the service response should be: 200


Scenario: TC-007_USER_Negative: Verify Update User service using empty value in for facebookUserId

Given Create new user
And Login with valid cridintials
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


Scenario: TC-008_USER_Negative: Verify Update User service using empty value in for gender

Given Create new user
And Login with valid cridintials
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
    "gender" : "",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"
}

Then the service response should be: 200


Scenario: TC-009_USER_Negative: Verify Update User service using empty value in for passcode

Given Create new user
And Login with valid cridintials
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
    "passcode" : "",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"
}

Then the service response should be: 200

Scenario: TC-010_USER_Negative: Verify Update User service using empty value in for timezone

Given Create new user
And Login with valid cridintials
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
    "timezone" : "",
    "locale" : "en_US",
    "version" : "0"
}

Then the service response should be: 200

Scenario: TC-011_USER_Negative: Verify Update User service using empty value in for locale

Given Create new user
And Login with valid cridintials
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
    "locale" : "",
    "version" : "0"
}

Then the service response should be: 200

Scenario: TC-012_USER_Negative: Verify Update User service using empty value in for version

Given Create new user
And Login with valid cridintials
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
    "version" : ""
}

Then the service response should be: 409


Scenario: TC-013_USER_Negative: Verify Update User service using invalid data for name

Given Create new user
And Login with valid cridintials
And service method is put
When service url equal : Update_User
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
    "id" : "UserID",
    "name" : "testaqa@#",
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


Scenario: TC-014_USER_Negative: Verify Update User service using invalid data for emailAddress

Given Create new user
And Login with valid cridintials
And service method is put
When service url equal : Update_User
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
    "id" : "UserID",
    "name" : "testaqa",
    "emailAddress" : "SS",
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

Then the service response should be: 409


Scenario: TC-015_USER_Negative: Verify Update User service using invalid data for phoneNo

Given Create new user
And Login with valid cridintials
And service method is put
When service url equal : Update_User
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
    "id" : "UserID",
    "name" : "testaqa",
    "emailAddress" : "Same_User_Email",
    "phoneNo" : "###",
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


Scenario: TC-016_USER_Negative: Verify Update User service using invalid data for cellNo

Given Create new user
And Login with valid cridintials
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
    "cellNo" : "####",
    "facebookUserId" : "",
    "loginProvider" : "LINK",
    "gender" : "M",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"
}

Then the service response should be: 200


Scenario: TC-017_USER_Negative: Verify Update User service using invalid data for facebookUserId

Given Create new user
And Login with valid cridintials
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
    "facebookUserId" : "AAA",
    "loginProvider" : "LINK",
    "gender" : "M",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"
}
Then the service response should be: 409

Scenario: TC-018_USER_Negative: Verify Update User service using invalid data for gender

Given Create new user
And Login with valid cridintials
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
    "gender" : "Q",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"
}

Then the service response should be: 409


Scenario: TC-019_USER_Negative: Verify Update User service using invalid data for passcode

Given Create new user
And Login with valid cridintials
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
    "passcode" : "#@#@",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"
}

Then the service response should be: 200


Scenario: TC-020_USER_Negative: Verify Update User service using invalid data for timezone

Given Create new user
And Login with valid cridintials
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
    "timezone" : "QA",
    "locale" : "en_US",
    "version" : "0"
}

Then the service response should be: 409


Scenario: TC-021_USER_Negative: Verify Update User service using invalid data for locale

Given Create new user
And Login with valid cridintials
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
    "locale" : "SAS",
    "version" : "0"
}

Then the service response should be: 409


Scenario: TC-022_USER_Negative: Verify Update User service using invalid data for version

Given Create new user
And Login with valid cridintials
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
    "version" : "#"
}

Then the service response should be: 400


Scenario: TC-023_USER_Negative: Verify Update User service using invalid data for User ID not exist

Given Create new user
And Login with valid cridintials
And service method is put
When service url equal : Update_User
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
    "id" : "0",
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
Then the service response should be: 409


Scenario: TC-024_USER_Negative: Verify Update User service using invalid data for User ID already exist

Given Create new user
And Login with valid cridintials
And service method is put
When service url equal : Update_User
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
    "id" : "UserID",
    "name" : "testaqa",
    "emailAddress" : "say12@ayyash",
    "phoneNo" : "877-444-1234",
    "cellNo" : "877-555-1234",
    "facebookUserId" : "",
    "loginProvider" : "LINK",
    "gender" : "X",
    "passcode" : "ABC",
    "timezone" : "ASD",
    "locale" : "AGV",
    "version" : "HH"
}

Then the service response should be: 400