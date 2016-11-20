Meta:
@GEO
@Update_GEO_Negative_scenarios
@Update_GEO_Negative
@ReportName Geofence_Negative
@Link

Narrative:
In order to test GET_GEO service
As a tester
I want to make sure all return the code 200

Scenario: TC-001_GEO_Negative: Update GEO when mismatch GEO ID
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And service url equals : Add_GEO with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "points" : [
    {
        "latitude" : 42.7208661,
        "longitude" : -75.8043122
    }
    ],
    "timeout" : 30 
}
And the service response should be: 201
And Retrieve second id from response
And service method is put
And The service url equal : Update_GEO with Same_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "id" : "1",
    "version":0,
    "points" : [{
            "latitude" : 80.7208661,
            "longitude" : -75.8043122
        },
        {
            "latitude" : 45.7200681,
            "longitude" : -75.8043038
        }],
    "timeout" : 5
}
And the service response should be: 409

Scenario: TC-002_GEO_Negative: Update GEO when mismatch version
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And service url equals : Add_GEO with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "points" : [
    {
        "latitude" : 42.7208661,
        "longitude" : -75.8043122
    }
    ],
    "timeout" : 30 
}
And the service response should be: 201
And Retrieve second id from response
And service method is put
And The service url equal : Update_GEO with Same_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "id" : "Second_id",
    "version":10,
    "points" : [{
            "latitude" : 80.7208661,
            "longitude" : -75.8043122
        },
        {
            "latitude" : 45.7200681,
            "longitude" : -75.8043038
        }],
    "timeout" : 5
}
And the service response should be: 409


Scenario: TC-003_GEO_Negative: Update GEO When Latitude is greater than 90 or less than -90
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And service url equals : Add_GEO with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "points" : [
    {
        "latitude" : 42.7208661,
        "longitude" : -75.8043122
    }
    ],
    "timeout" : 30 
}
And the service response should be: 201
And Retrieve second id from response
And service method is put
And The service url equal : Update_GEO with Same_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "id" : "Second_id",
    "version":10,
    "points" : [{
            "latitude" : 200.7208661,
            "longitude" : -75.8043122
        },
        {
            "latitude" : -200.7200681,
            "longitude" : -75.8043038
        }],
    "timeout" : 5
}
And the service response should be: 409


Scenario: TC-004_GEO_Negative: Update GEO When Longitude is greater than 180 or less than -180
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And service url equals : Add_GEO with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "points" : [
    {
        "latitude" : 42.7208661,
        "longitude" : -75.8043122
    }
    ],
    "timeout" : 30 
}
And the service response should be: 201
And Retrieve second id from response
And service method is put
And The service url equal : Update_GEO with Same_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "id" : "Second_id",
    "version":10,
    "points" : [{
            "latitude" : 42.7208661,
            "longitude" : 200.8043122
        },
        {
            "latitude" : 75.7200681,
            "longitude" : -200.8043038
        }],
    "timeout" : 5
}
And the service response should be: 409

Scenario: TC-005_GEO_Negative: Update GEO When When id is missing
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And service url equals : Add_GEO with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "points" : [
    {
        "latitude" : 42.7208661,
        "longitude" : -75.8043122
    }
    ],
    "timeout" : 30 
}
And the service response should be: 201
And Retrieve second id from response
And service method is put
And The service url equal : Update_GEO with Same_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "id" : "",
    "version":10,
    "points" : [{
            "latitude" : 42.7208661,
            "longitude" : 33.8043122
        },
        {
            "latitude" : 75.7200681,
            "longitude" : 40.8043038
        }],
    "timeout" : 5
}
And the service response should be: 409


Scenario: TC-006_GEO_Negative: Update GEO When When version is missing
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And service url equals : Add_GEO with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "points" : [
    {
        "latitude" : 42.7208661,
        "longitude" : -75.8043122
    }
    ],
    "timeout" : 30 
}
And the service response should be: 201
And Retrieve second id from response
And service method is put
And The service url equal : Update_GEO with Same_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "id" : "Second_id",
    "version":"",
    "points" : [{
            "latitude" : 42.7208661,
            "longitude" : 33.8043122
        },
        {
            "latitude" : 75.7200681,
            "longitude" : 40.8043038
        }],
    "timeout" : 5
}
And the service response should be: 409

Scenario: TC-007_GEO_Negative: Update GEO When When Points is missing or null
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And service url equals : Add_GEO with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "points" : [
    {
        "latitude" : 42.7208661,
        "longitude" : -75.8043122
    }
    ],
    "timeout" : 30 
}
And the service response should be: 201
And Retrieve second id from response
And service method is put
And The service url equal : Update_GEO with Same_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "id" : "Second_id",
    "version":"0",
    "points" : [],
    "timeout" : 5
}
And the service response should be: 409

Scenario: TC-008_GEO_Negative: Update GEO When Latitude is missing or null
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And service url equals : Add_GEO with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "points" : [
    {
        "latitude" : 42.7208661,
        "longitude" : -75.8043122
    }
    ],
    "timeout" : 30 
}
And the service response should be: 201
And Retrieve second id from response
And service method is put
And The service url equal : Update_GEO with Same_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "id" : "Second_id",
    "version":"0",
    "points" : [
    {
        "latitude" : "",
        "longitude" : -75.8043122
    },
    {
        
        "longitude" : -75.8043122
    }
    ],
    "timeout" : 5
}
And the service response should be: 409


Scenario: TC-009_GEO_Negative: Update GEO When Longitude is missing or null
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And service url equals : Add_GEO with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "points" : [
    {
        "latitude" : 42.7208661,
        "longitude" : -75.8043122
    }
    ],
    "timeout" : 30 
}
And the service response should be: 201
And Retrieve second id from response
And service method is put
And The service url equal : Update_GEO with Same_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "id" : "Second_id",
    "version":"0",
    "points" : [
    {
        "latitude" : 42.7208661,
        "longitude" : ""
    },
    {
        "latitude" : 42.7208661,
       
    }
    ],
    "timeout" : 5
}
And the service response should be: 400


Scenario: TC-010_GEO_Negative: Update GEO When invalid timeout value is passed
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And service url equals : Add_GEO with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "points" : [
    {
        "latitude" : 42.7208661,
        "longitude" : -75.8043122
    }
    ],
    "timeout" : 30 
}
And the service response should be: 201
And Retrieve second id from response
And service method is put
And The service url equal : Update_GEO with Same_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "id" : "Second_id",
    "version":"0",
    "points" : [
    {
        "latitude" : 42.7208661,
        "longitude" : -75.8043122
    }
    ],
    "timeout" : -5
}
And the service response should be: 409

Scenario: TC-011_GEO_Negative: Update GEO When more than 5 points are passed
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And service url equals : Add_GEO with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "points" : [
    {
        "latitude" : 42.7208661,
        "longitude" : -75.8043122
    }
    ],
    "timeout" : 30 
}
And the service response should be: 201
And Retrieve second id from response
And service method is put
And The service url equal : Update_GEO with Same_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "id" : "Second_id",
    "version":"0",
    "points" : [
    {
        "latitude" : 42.7208661,
        "longitude" : -75.8043122
    },
     {
        "latitude" : 42.7208661,
        "longitude" : -75.8043122
    },
     {
        "latitude" : 42.7208661,
        "longitude" : -75.8043122
    },
     {
        "latitude" : 42.7208661,
        "longitude" : -75.8043122
    },
     {
        "latitude" : 42.7208661,
        "longitude" : -75.8043122
    },
     {
        "latitude" : 42.7208661,
        "longitude" : -75.8043122
    },
    ],
    "timeout" : 5
}
And the service response should be: 400