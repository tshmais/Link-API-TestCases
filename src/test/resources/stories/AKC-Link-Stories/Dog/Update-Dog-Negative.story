Meta:
@Dog
@Update_user_dog_Negative_scenarios
@Dog_Negative
@ReportName Dog_Negative
@Link


Narrative:
In order to test Update User Service
As a tester
I want to make sure all return the code 2xx


Scenario: TC-001_DOG_Negative: Update Dog using empty value for optional fields
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with  {
      "id": Dog_Id,
      "version": 0,
      "name": "t",
      "gender": "",
      "neutered": "",
      "description": "",
      "age" : "1",
      "mix": false,
      "breeds" : [
                        {
                        "id" : "1"
                        }
                    ],
      "dateOfBirth": "",
      "weight": "",
      "weightClass": "",
      "eyeColor": "",
      "akcRegistrationNo": "",
     "accountId": UserID
    }
Then the service response should be: 200


Scenario: TC-002_DOG_Negative: Update Dog using empty value for dog id 
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with  {
      "id": "",
      "version": "0",
      "name": "t",
      "gender": "",
      "neutered": "",
      "description": "",
      "age" : "1",
      "mix": false,
      "breeds" : [
                        {
                        "id" : "1"
                        }
                    ],
      "dateOfBirth": "",
      "weight": "",
      "weightClass": "",
      "eyeColor": "",
      "akcRegistrationNo": "",
     "accountId": UserID
    }
Then the service response should be: 409


Scenario: TC-003_DOG_Negative: Update Dog using empty value for version
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with  {
      "id": Dog_Id,
      "version": "",
      "name": "t",
      "gender": "",
      "neutered": "",
      "description": "",
      "age" : "1",
      "mix": false,
      "breeds" : [
                        {
                        "id" : "1"
                        }
                    ],
      "dateOfBirth": "",
      "weight": "",
      "weightClass": "",
      "eyeColor": "",
      "akcRegistrationNo": "",
     "accountId": UserID
    }
Then the service response should be: 409


Scenario: TC-004_DOG_Negative: Update Dog using empty value for name
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": Dog_Id,
      "version": "0",
      "name": "",
      "gender": "",
      "neutered": "",
      "description": "",
      "age" : "1",
      "mix": false,
      "breeds" : [
                        {
                        "id" : "1"
                        }
                    ],
      "dateOfBirth": "",
      "weight": "",
      "weightClass": "",
      "eyeColor": "",
      "akcRegistrationNo": "",
     "accountId": UserID
    }
Then the service response should be: 409



Scenario: TC-005_DOG_Negative: Update Dog using empty value for age
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with  {
      "id": Dog_Id,
      "version": "0",
      "name": "t",
      "gender": "",
      "neutered": "",
      "description": "",
      "age" : "",
      "mix": false,
      "breeds" : [
                        {
                        "id" : "1"
                        }
                    ],
      "dateOfBirth": "",
      "weight": "",
      "weightClass": "",
      "eyeColor": "",
      "akcRegistrationNo": "",
     "accountId": UserID
    }
Then the service response should be: 409


Scenario: TC-006_DOG_Negative: Update Dog using empty value for mixbrees option
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with  {
      "id": Dog_Id,
      "version": "0",
      "name": "t",
      "gender": "",
      "neutered": "",
      "description": "",
      "age" : "1",
      "mix": "",
      "breeds" : [
                        {
                        "id" : "1"
                        }
                    ],
      "dateOfBirth": "",
      "weight": "",
      "weightClass": "",
      "eyeColor": "",
      "akcRegistrationNo": "",
     "accountId": UserID
    }
Then the service response should be: 409


Scenario: TC-007_DOG_Negative: Update Dog using empty value for mixbrees Id
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with  {
      "id": Dog_Id,
      "version": "0",
      "name": "t",
      "gender": "",
      "neutered": "",
      "description": "",
      "age" : "1",
      "mix": false,
      "breeds" : [
                        {
                        "id" : ""
                        }
                    ],
      "dateOfBirth": "",
      "weight": "",
      "weightClass": "",
      "eyeColor": "",
      "akcRegistrationNo": "",
     "accountId": UserID
    }
Then the service response should be: 409


Scenario: TC-008_DOG_Negative: Update Dog using empty value for accountId
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with  {
      "id": Dog_Id,
      "version": "0",
      "name": "t",
      "gender": "",
      "neutered": "",
      "description": "",
      "age" : "1",
      "mix": false,
      "breeds" : [
                        {
                        "id" : "1"
                        }
                    ],
      "dateOfBirth": "",
      "weight": "",
      "weightClass": "",
      "eyeColor": "",
      "akcRegistrationNo": "",
     "accountId": ""
    }
Then the service response should be: 409


Scenario: TC-009_DOG_Negative: Update Dog using Special script value for gender
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with  {
      "id": Dog_Id,
      "version": 0,
      "name": "t",
      "gender": "print",
      "neutered": "",
      "description": "",
      "age" : "1",
      "mix": false,
      "breeds" : [
                        {
                        "id" : "1"
                        }
                    ],
      "dateOfBirth": "",
      "weight": "",
      "weightClass": "",
      "eyeColor": "",
      "akcRegistrationNo": "",
     "accountId": UserID
    }
Then the service response should be: 409

Scenario: TC-010_DOG_Negative: Update Dog using Special script value for gender
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with  {
      "id": Dog_Id,
      "version": 0,
      "name": "t",
      "gender": "",
      "neutered": "select * from breeds",
      "description": "",
      "age" : "1",
      "mix": false,
      "breeds" : [
                        {
                        "id" : "1"
                        }
                    ],
      "dateOfBirth": "",
      "weight": "",
      "weightClass": "",
      "eyeColor": "",
      "akcRegistrationNo": "",
     "accountId": UserID
    }
Then the service response should be: 400

Scenario: TC-011_DOG_Negative: Update Dog using invalid data for description
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with  {
      "id": Dog_Id,
      "version": 0,
      "name": "t",
      "gender": "",
      "neutered": "",
      "description" : "(  )",
      "age" : "1",
      "mix": false,
      "breeds" : [
                        {
                        "id" : "1"
                        }
                    ],
      "dateOfBirth": "",
      "weight": "",
      "weightClass": "",
      "eyeColor": "",
      "akcRegistrationNo": "",
     "accountId": UserID
    }
Then the service response should be: 400


Scenario: TC-012_DOG_Negative: Update Dog using SQL Injection data for age
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with  {
      "id": Dog_Id,
      "version": 0,
      "name": "t",
      "gender": "",
      "neutered": "",
      "description" : "",
      "age" : "select age from dog where id=10;",
      "mix": false,
      "breeds" : [
                        {
                        "id" : "1"
                        }
                    ],
      "dateOfBirth": "",
      "weight": "",
      "weightClass": "",
      "eyeColor": "",
      "akcRegistrationNo": "",
     "accountId": UserID
    }
Then the service response should be: 400

Scenario: TC-013_DOG_Negative: Update Dog using Special Characters for age
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with  {
      "id": Dog_Id,
      "version": 0,
      "name": "t",
      "gender": "",
      "neutered": "",
      "description" : "",
      "age" : "$0",
      "mix": false,
      "breeds" : [
                        {
                        "id" : "1"
                        }
                    ],
      "dateOfBirth": "",
      "weight": "",
      "weightClass": "",
      "eyeColor": "",
      "akcRegistrationNo": "",
     "accountId": UserID
    }
Then the service response should be: 400

Scenario: TC-014_DOG_Negative: Update Dog using Special Characters for mix
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with  {
      "id": Dog_Id,
      "version": 0,
      "name": "t",
      "gender": "",
      "neutered": "",
      "description" : "",
      "age" : "",
      "mix": "езийклм",
      "breeds" : [
                        {
                        "id" : "1"
                        }
                    ],
      "dateOfBirth": "",
      "weight": "",
      "weightClass": "",
      "eyeColor": "",
      "akcRegistrationNo": "",
     "accountId": UserID
    }
Then the service response should be: 400

Scenario: TC-015_DOG_Negative: Update Dog using Special Characters for breeds ID
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with  {
      "id": Dog_Id,
      "version": 0,
      "name": "t",
      "gender": "",
      "neutered": "",
      "description" : "",
      "age" : "",
      "mix": false,
      "breeds" : [
                        {
                        "id" : "select * from breeds;"
                        }
                    ],
      "dateOfBirth": "",
      "weight": "",
      "weightClass": "",
      "eyeColor": "",
      "akcRegistrationNo": "",
     "accountId": UserID
    }

Scenario: TC-016_DOG_Negative: Update Dog using "0000-00-00" date for dateOfBirth
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with  {
      "id": Dog_Id,
      "version": 0,
      "name": "t",
      "gender": "",
      "neutered": "",
      "description": "",
      "age" : "0",
      "mix": false,
      "breeds" : [
                        {
                        "id" : "1"
                        }
                    ],
      "dateOfBirth": "0000-00-00",
      "weight": "",
      "weightClass": "",
      "eyeColor": "",
      "akcRegistrationNo": "",
     "accountId": UserID
    }
Then the service response should be: 400

Scenario: TC-017_DOG_Negative: Update Dog using incorrect date for dateOfBirth
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with  {
      "id": Dog_Id,
      "version": 0,
     "name": "t",
      "gender": "",
      "neutered": "",
      "description": "",
      "age" : "0",
      "mix": false,
      "breeds" : [
                        {
                        "id" : "1"
                        }
                    ],
      "dateOfBirth": "2016-02-32",
      "weight": "",
      "weightClass": "",
      "eyeColor": "",
      "akcRegistrationNo": "",
     "accountId": UserID
    }
Then the service response should be: 400


Scenario: TC-018_DOG_Negative: Update Dog using future date for dateOfBirth
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with  {
      "id": Dog_Id,
      "version": 0,
     "name": "t",
      "gender": "",
      "neutered": "",
      "description": "",
      "age" : "0",
      "mix": false,
      "breeds" : [
                        {
                        "id" : "1"
                        }
                    ],
      "dateOfBirth": "2017-07-07",
      "weight": "",
      "weightClass": "",
      "eyeColor": "",
      "akcRegistrationNo": "",
     "accountId": UserID
    }
Then the service response should be: 409


Scenario: TC-019_DOG_Negative: Update Dog using "2016-02-30" date for dateOfBirth
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with  {
      "id": Dog_Id,
      "version": 0,
     "name": "t",
      "gender": "",
      "neutered": "",
      "description": "",
      "age" : "0",
      "mix": false,
      "breeds" : [
                        {
                        "id" : "1"
                        }
                    ],
      "dateOfBirth": "2016-02-30",
      "weight": "",
      "weightClass": "",
      "eyeColor": "",
      "akcRegistrationNo": "",
     "accountId": UserID
    }
Then the service response should be: 200


Scenario: TC-020_DOG_Negative: Update Dog using incorrect date format for dateOfBirth
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with  {
      "id": Dog_Id,
      "version": 0,
     "name": "t",
      "gender": "",
      "neutered": "",
      "description": "",
      "age" : "0",
      "mix": false,
      "breeds" : [
                        {
                        "id" : "1"
                        }
                    ],
      "dateOfBirth": "2016/02/30",
      "weight": "",
      "weightClass": "",
      "eyeColor": "",
      "akcRegistrationNo": "",
     "accountId": UserID
    }
Then the service response should be: 400


Scenario: TC-021_DOG_Negative: Update Dog using Special Characters for weight
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with  {
      "id": Dog_Id,
      "version": 0,
     "name": "t",
      "gender": "",
      "neutered": "",
      "description": "",
      "age" : "0",
      "mix": false,
      "breeds" : [
                        {
                        "id" : "1"
                        }
                    ],
      "dateOfBirth": "2016/02/30",
      "weight": "*",
      "weightClass": "",
      "eyeColor": "",
      "akcRegistrationNo": "",
     "accountId": UserID
    }
Then the service response should be: 400


Scenario: TC-022_DOG_Negative: Update Dog using Special Characters for weightClass,eyeColor and akcRegistrationNo
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with  {
      "id": Dog_Id,
      "version": 0,
     "name": "t",
      "gender": "",
      "neutered": "",
      "description": "",
      "age" : "0",
      "mix": false,
      "breeds" : [
                        {
                        "id" : "1"
                        }
                    ],
      "dateOfBirth": "2016-02-03",
        "weight": "",
      "weightClass": "*",
      "eyeColor": "*",
      "akcRegistrationNo": "#",
     "accountId": UserID
    }
Then the service response should be: 200


Scenario: TC-023_DOG_Negative: Update Dog using mismatching accountId
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {  
"id": Dog_Id,
  "version": 0,
   "name": "lucy",
   "gender":"f",
   "neutered":true,
   "age":"25",
   "mix":false,
   "breeds":[  
      {  
         "id":"1"
      }
   ],
   "description":"My dog Pucy",
   "dateOfBirth":"2016-07-22",
   "weight":8.9,
   "eyeColor":"BROWN",
   "weightClass":"NA",
   "akcRegistrationNo":"ABC00123",
   "accountId": "1"
}
Then the service response should be: 409


Scenario: TC-024_DOG_Negative: Update Dog using mismatching Dog Id
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {  
"id": 1,
  "version": 0,
   "name": "lucy",
   "gender":"f",
   "neutered":true,
   "age":"25",
   "mix":false,
   "breeds":[  
      {  
         "id":"1"
      }
   ],
   "description":"My dog Pucy",
   "dateOfBirth":"2016-07-22",
   "weight":8.9,
   "eyeColor":"BROWN",
   "weightClass":"NA",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 409


Scenario: TC-025_DOG_Negative: Update Dog using Dog Ids Not Exist ID
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And The service url equals: Update_Dog_param1 with Same_User_ID with Not_Exist_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {  
"id": Dog_Id,
  "version": 0,
   "name": "lucy",
   "gender":"f",
   "neutered":true,
   "age":"25",
   "mix":false,
   "breeds":[  
      {  
         "id":"1"
      }
   ],
   "description":"My dog Pucy",
   "dateOfBirth":"2016-07-22",
   "weight":8.9,
   "eyeColor":"BROWN",
   "weightClass":"NA",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 404


Scenario: TC-026_DOG_Negative: Update Dog using empty Dog ID
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And The service url equals: Update_Dog_param1 with Same_User_ID with Empty_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {  
"id": Dog_Id,
  "version": 0,
   "name": "lucy",
   "gender":"f",
   "neutered":true,
   "age":"25",
   "mix":false,
   "breeds":[  
      {  
         "id":"1"
      }
   ],
   "description":"My dog Pucy",
   "dateOfBirth":"2016-07-22",
   "weight":8.9,
   "eyeColor":"BROWN",
   "weightClass":"NA",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 405


Scenario: TC-027_DOG_Negative: Update Dog using already Existing dog ID
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And The service url equals: Update_Dog_param1 with Same_User_ID with Existing_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {  
"id": Dog_Id,
  "version": 0,
   "name": "lucy",
   "gender":"f",
   "neutered":true,
   "age":"25",
   "mix":false,
   "breeds":[  
      {  
         "id":"1"
      }
   ],
   "description":"My dog Pucy",
   "dateOfBirth":"2016-07-22",
   "weight":8.9,
   "eyeColor":"BROWN",
   "weightClass":"NA",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 403

Scenario: TC-028_DOG_Negative: Update Dog using Empty User ID
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And The service url equals: Update_Dog_param1 with Empty_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {  
"id": Dog_Id,
  "version": 0,
   "name": "lucy",
   "gender":"f",
   "neutered":true,
   "age":"25",
   "mix":false,
   "breeds":[  
      {  
         "id":"1"
      }
   ],
   "description":"My dog Pucy",
   "dateOfBirth":"2016-07-22",
   "weight":8.9,
   "eyeColor":"BROWN",
   "weightClass":"NA",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 405

Scenario: TC-029_DOG_Negative: Update Dog using User ID not exist
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And The service url equals: Update_Dog_param1 with Not_Exist_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {  
"id": Dog_Id,
  "version": 0,
   "name": "lucy",
   "gender":"f",
   "neutered":true,
   "age":"25",
   "mix":false,
   "breeds":[  
      {  
         "id":"1"
      }
   ],
   "description":"My dog Pucy",
   "dateOfBirth":"2016-07-22",
   "weight":8.9,
   "eyeColor":"BROWN",
   "weightClass":"NA",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 404


Scenario: TC-030_DOG_Negative: Update Dog using User id already exist
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And The service url equals: Update_Dog_param1 with Existing_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {  
"id": Dog_Id,
  "version": 0,
   "name": "lucy",
   "gender":"f",
   "neutered":true,
   "age":"25",
   "mix":false,
   "breeds":[  
      {  
         "id":"1"
      }
   ],
   "description":"My dog Pucy",
   "dateOfBirth":"2016-07-22",
   "weight":8.9,
   "eyeColor":"BROWN",
   "weightClass":"NA",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 403

Scenario: TC-031_DOG_Negative: Update Dog using to validate Maximum values
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": Dog_Id,
      "version": 0,
      "name": "PucyPucyPucyPucyPucyPucyPucyPucyPucyPucyPucyPucyP51",
      "gender": "M",
      "neutered": false,
      "description": "1MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy6785dogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850000",
      "age" : 6,
      "mix": true,
      "breeds" : [
                       
                        {
                        "id" : 2
                        },
                        {
                        "id" : 8
                        }
                    ],
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "MoreThanMaximumnumberofcharactersMoreThanMaximum",
      "eyeColor": "BROWNBROWNBROWNBROWNBROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 409

Scenario: TC-032_DOG_Negative: Update Dog using using duplicate breedsID selections
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": Dog_Id,
      "version": 0,
      "name": "b",
      "gender": "M",
      "neutered": false,
      "description": "b",
      "age" : 6,
      "mix": true,
      "breeds" : [
                        
                        {
                        "id" : 2
                        },
                        {
                        "id" : 2
                        }
                    ],
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "q",
      "eyeColor": "b",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 409

Scenario: TC-033_DOG_Negative: Update mixedbreeds Dog using breeds ID 0
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": Dog_Id,
      "version": 0,
      "name": "b",
      "gender": "M",
      "neutered": false,
      "description": "b",
      "age" : 6,
      "mix": true,
      "breeds" : [
                        
                        {
                        "id" : 0
                        }
                    ],
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "q",
      "eyeColor": "b",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 409



Scenario: TC-034_DOG_Negative: Update mixedbreeds Dog using breeds ID 380
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": Dog_Id,
      "version": 0,
      "name": "b",
      "gender": "M",
      "neutered": false,
      "description": "b",
      "age" : 6,
      "mix": true,
      "breeds" : [
                        
                        {
                        "id" : 380
                        }
                    ],
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "q",
      "eyeColor": "b",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 409


Scenario: TC-035_DOG_Negative: update Dog using minus weight
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": Dog_Id,
      "version": 0,
      "name": "b",
      "gender": "M",
      "neutered": false,
      "description": "b",
      "age" : 6,
      "mix": true,
      "breeds" : [
                        
                        {
                        "id" : 380
                        }
                    ],
      "dateOfBirth": "2013-03-07",
      "weight": -8.9,
      "weightClass": "q",
      "eyeColor": "b",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 409