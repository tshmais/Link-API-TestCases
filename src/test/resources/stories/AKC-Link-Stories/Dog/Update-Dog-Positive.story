Meta:
@Dog
@Update_user_dog_Positive_scenarios
@Dog_Negative
@ReportName Dog_Positive
@Link



Narrative:
In order to test Update User Service
As a tester
I want to make sure all return the code 2xx


Scenario: TC-001_DOG_Positive: Update mix breeds Dog to Purebreeds Dog
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
      "name": "Pucy",
      "gender": "M",
      "neutered": false,
      "description": "My dog Pucy",
      "age" : 6,
      "mix": false,
      "breeds" : [                        
                        {
                        "id" : 2
                        }
                        
                    ],
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-002_DOG_Positive: Update Purebreeds Dog to mix breeds Dog
Given Create new user
And Login with valid credentials
And Create new purebreeds dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": Dog_Id,
      "version": 0,
      "name": "Pucy",
      "gender": "M",
      "neutered": false,
      "description": "My dog Pucy",
      "age" : 6,
      "mix": true,
      "breeds" : [                        
                        {
                        "id" : 2
                        },
                        {
                        "id" : 1
                        }
                        
                    ],
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200


Scenario: TC-003_DOG_Positive: Update Dog using valid data to Validate maximum limitation
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
      "id": Dog_Id,
      "version": 0,
      "name": "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
      "gender": "M",
      "neutered": false,
      "description": "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
      "age" : 4,
      "mix": false,
      "breeds" : [
                        {
                        "name" : "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
                        }
                    ],
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
      "eyeColor": "aaaaaaaaaaaaaaaaaaaa",
      "akcRegistrationNo": "123456789aaaaaaaaaaaa123456789",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-004_DOG_Positive: Update Dog using valid data to Validate minimum limitation
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
      "id": Dog_Id,
      "version": 0,
      "name": "a",
      "gender": "M",
      "neutered": false,
      "description": "a",
      "age" : 4,
      "mix": false,
      "breeds" : [
                        {
                        "name" : "a"
                        }
                    ],
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "a",
      "eyeColor": "a",
      "akcRegistrationNo": "a",
      "accountId": UserID
    }
Then the service response should be: 200


Scenario: TC-005_DOG_Positive: Update Dog using special character
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
      "id": Dog_Id,
      "version": 0,
      "name": "יי",
      "gender": "M",
      "neutered": false,
      "description": "a",
      "age" : 4,
      "mix": false,
      "breeds" : [
                        {
                        "name" : "יי"
                        }
                    ],
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "יי",
      "eyeColor": "יי",
      "akcRegistrationNo": "a",
      "accountId": UserID
    }
Then the service response should be: 200


Scenario:TC-006_DOG_Positive: Update Dog using files and special formats
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
      "id": Dog_Id,
      "version": 0,
      "name": "Pucy.html",
      "gender": "M",
      "neutered": false,
      "description": "Select * from user where id = 2",
      "age" : 4,
      "mix": false,
      "breeds" : [
                        {
                        "name" : "test.JPEG"
                        }
                    ],
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "<p> test</p>",
      "eyeColor": "BROWN.GIF",
      "akcRegistrationNo": "a",
      "accountId": UserID
    }
Then the service response should be: 200


Scenario: TC-007_DOG_Positive: Update Dog using duplicate dog data for same user
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
      "name": "Pucy",
      "gender": "M",
      "neutered": false,
      "description": "My dog Pucy",
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
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
    
And the service response should be: 200
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": Dog_Id,
      "version": 1,
      "name": "Pucy",
      "gender": "M",
      "neutered": false,
      "description": "My dog Pucy",
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
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200


Scenario: TC-008_DOG_Positive: Update Dog using without optional fields in payload
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
   "name": "Update Name",
   "age":25,
   "mix":true,
   "breeds" : [
                    ],
   "accountId": UserID
}
Then the service response should be: 200

Scenario: TC-009_DOG_Positive: Update Dog gender from male to female
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
   "name": "Pucy",
   "gender":"F",
   "neutered":true,
   "age":25,
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
Then the service response should be: 200


Scenario: TC-010_DOG_Positive: Update Dog gender from female to male
Given Create new user
And Login with valid credentials
And Create new purebreeds dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {  
"id": Dog_Id,
  "version": 0,
   "name": "Pucy",
   "gender":"M",
   "neutered":true,
   "age":25,
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
Then the service response should be: 200


Scenario: TC-011_DOG_Positive: Update Dog breeds to two breeds ID
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
   "name": "Pucy",
   "gender":"M",
   "neutered":true,
   "age":25,
   "mix":true,
   "breeds":[  
      {  
         "id":"1",
         "id":"2"
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
Then the service response should be: 200


Scenario: TC-012_DOG_Positive: Update DOB for Dog using ISO 8601 date format
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
   "name": "Pucy",
   "gender":"M",
   "neutered":true,
   "age":25,
   "mix":true,
   "breeds":[  
      {  
         "id":"1"
      },
      {  
         "id":"2"
      }
   ],
   "description":"My dog Pucy",
   "dateOfBirth":"2015-03-22",
   "weight":8.9,
   "eyeColor":"BROWN",
   "weightClass":"NA",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 200


Scenario: TC-013_DOG_Positive: Update akcRegistrationNo for a Dog using character data
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
   "name": "Pucy",
   "gender":"M",
   "neutered":true,
   "age":25,
   "mix":true,
   "breeds":[  
      {  
         "id":"1"
      },
      {  
         "id":"2"
      }
   ],
   "description":"My dog Pucy",
   "dateOfBirth":"2016-07-22",
   "weight":8.9,
   "eyeColor":"BROWN",
   "weightClass":"NA",
   "akcRegistrationNo":"ABCDE123",
   "accountId": UserID
}
Then the service response should be: 200



Scenario: TC-014_DOG_Positive: Update Dog has age of 0 
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
   "name": "Pucy",
   "gender":"M",
   "neutered":true,
   "age":0,
   "mix":true,
   "breeds":[  
      {  
         "id":"1"
      },
      {  
         "id":"2"
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
Then the service response should be: 200

Scenario: TC-015_DOG_Positive: Update Dog has age of 25
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
   "name": "Pucy",
   "gender":"M",
   "neutered":true,
   "age":25,
   "mix":true,
   "breeds":[  
      {  
         "id":"1"
      },
      {  
         "id":"2"
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
Then the service response should be: 200

Scenario: TC-016_DOG_Positive: Update Dog has age of 50
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
   "name": "Pucy",
   "gender":"M",
   "neutered":true,
   "age":50,
   "mix":true,
   "breeds":[  
      {  
         "id":"1"
      },
      {  
         "id":"2"
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
Then the service response should be: 200

Scenario: TC-017_DOG_Positive: Update Dog has age of 5.1
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
   "name": "Pucy",
   "gender":"M",
   "neutered":true,
   "age":5.1,
   "mix":true,
   "breeds":[  
      {  
         "id":"1"
      },
      {  
         "id":"2"
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
Then the service response should be: 200


Scenario: TC-018_DOG_Positive: Update DOB for Dog with ISO 8601 date format for pass date
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
   "name": "Pucy",
   "gender":"M",
   "neutered":true,
   "age":25,
   "mix":true,
   "breeds":[  
      {  
         "id":"1"
      },
      {  
         "id":"2"
      }
   ],
   "description":"My dog Pucy",
   "dateOfBirth":"2015-03-22",
   "weight":8.9,
   "eyeColor":"BROWN",
   "weightClass":"NA",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 200


Scenario: TC-019_DOG_Positive: Update DOB for Dog with ISO 8601 date format using curent date
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
   "name": "Pucy",
   "gender":"M",
   "neutered":true,
   "age":25,
   "mix":true,
   "breeds":[  
      {  
         "id":"1"
      },
      {  
         "id":"2"
      }
   ],
   "description":"My dog Pucy",
   "dateOfBirth":"2015-03-22",
   "weight":8.9,
   "eyeColor":"BROWN",
   "weightClass":"NA",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 200


Scenario: TC-020_DOG_Positive: Update dog to neutered dog
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
   "name": "Pucy",
   "gender":"M",
   "neutered":true,
   "age":25,
   "mix":true,
   "breeds":[  
      {  
         "id":"1"
      },
      {  
         "id":"2"
      }
   ],
   "description":"My dog Pucy",
   "dateOfBirth":"2015-03-22",
   "weight":8.9,
   "eyeColor":"BROWN",
   "weightClass":"NA",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 200

Scenario: TC-021_DOG_Positive: Update dog weight using small weight 
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
   "name": "Pucy",
   "gender":"M",
   "neutered":true,
   "age":25,
   "mix":true,
   "breeds":[  
      {  
         "id":"1"
      },
      {  
         "id":"2"
      }
   ],
   "description":"My dog Pucy",
   "dateOfBirth":"2015-03-22",
   "weight":0.1,
   "eyeColor":"BROWN",
   "weightClass":"NA",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 200

Scenario: TC-022_DOG_Positive: Update dog weight using large weight 
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
   "name": "Pucy",
   "gender":"M",
   "neutered":true,
   "age":25,
   "mix":true,
   "breeds":[  
      {  
         "id":"1"
      },
      {  
         "id":"2"
      }
   ],
   "description":"My dog Pucy",
   "dateOfBirth":"2015-03-22",
   "weight":500,
   "eyeColor":"BROWN",
   "weightClass":"NA",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 200

Scenario: TC-023_DOG_Positive: Update dog eyeColor to known colcor
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
   "name": "Pucy",
   "gender":"M",
   "neutered":true,
   "age":25,
   "mix":true,
   "breeds":[  
      {  
         "id":"1"
      },
      {  
         "id":"2"
      }
   ],
   "description":"My dog Pucy",
   "dateOfBirth":"2015-03-22",
   "weight":500,
   "eyeColor":"BROWN",
   "weightClass":"NA",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 200

Scenario: TC-024_DOG_Positive: Update dog eyeColor to unknown colcor
Given Create new user
And Login with valid credentials
And Create new purebreeds dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {  
"id": Dog_Id,
  "version": 0,
   "name": "Pucy",
   "gender":"M",
   "neutered":true,
   "age":25,
   "mix":true,
   "breeds":[  
      {  
         "id":"1"
      },
      {  
         "id":"2"
      }
   ],
   "description":"My dog Pucy",
   "dateOfBirth":"2015-03-22",
   "weight":500,
   "eyeColor":"B",
   "weightClass":"NA",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 200

Scenario: TC-025_DOG_Positive: Update dog weightClass to known Class
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
   "name": "Pucy",
   "gender":"M",
   "neutered":true,
   "age":25,
   "mix":true,
   "breeds":[  
      {  
         "id":"1"
      },
      {  
         "id":"2"
      }
   ],
   "description":"My dog Pucy",
   "dateOfBirth":"2015-03-22",
   "weight":500,
   "eyeColor":"BROWN",
   "weightClass":"male_weight_low",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 200

Scenario: TC-026_DOG_Positive: Update dog weightClass to unknown Class
Given Create new user
And Login with valid credentials
And Create new purebreeds dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {  
"id": Dog_Id,
  "version": 0,
   "name": "Pucy",
   "gender":"M",
   "neutered":true,
   "age":25,
   "mix":true,
   "breeds":[  
      {  
         "id":"1"
      },
      {  
         "id":"2"
      }
   ],
   "description":"My dog Pucy",
   "dateOfBirth":"2015-03-22",
   "weight":500,
   "eyeColor":"B",
   "weightClass":"NA",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 200

Scenario: TC-027_DOG_Positive: Update dog profile by removing neutered
Given Create new user
And Login with valid credentials
And Create new purebreeds dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {  
"id": Dog_Id,
  "version": 0,
   "name": "Pucy",
   "gender":"M",
     "age":25,
   "mix":true,
   "breeds":[  
      {  
         "id":"1"
      },
      {  
         "id":"2"
      }
   ],
   "description":"My dog Pucy",
   "dateOfBirth":"2015-03-22",
   "weight":500,
   "eyeColor":"B",
   "weightClass":"NA",
   "akcRegistrationNo":"NA",
   "accountId": UserID
}
Then the service response should be: 200



Scenario: TC-028_DOG_Positive: Update dog profile by removeing description
Given Create new user
And Login with valid credentials
And Create new purebreeds dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {  
"id": Dog_Id,
  "version": 0,
   "name": "Pucy",
   "gender":"M",
   "neutered":true,
   "age":25,
   "mix":true,
   "breeds":[  
      {  
         "id":"1"
      },
      {  
         "id":"2"
      }
   ],

   "dateOfBirth":"2015-03-22",
   "weight":500,
   "eyeColor":"B",
   "weightClass":"NA",
   "akcRegistrationNo":"NA",
   "accountId": UserID
}
Then the service response should be: 200

Scenario: TC-029_DOG_Positive: Update dog profile by removeing DOB
Given Create new user
And Login with valid credentials
And Create new purebreeds dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {  
"id": Dog_Id,
  "version": 0,
   "name": "Pucy",
   "gender":"M",
   "neutered":true,
   "age":25,
   "mix":true,
   "breeds":[  
      {  
         "id":"1"
      },
      {  
         "id":"2"
      }
   ],

 "description":"My dog Pucy",
    "weight":500,
   "eyeColor":"B",
   "weightClass":"NA",
   "akcRegistrationNo":"NA",
   "accountId": UserID
}
Then the service response should be: 200

Scenario: TC-030_DOG_Positive: Update dog profile by removeing weight
Given Create new user
And Login with valid credentials
And Create new purebreeds dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {  
"id": Dog_Id,
  "version": 0,
   "name": "Pucy",
   "gender":"M",
   "neutered":true,
   "age":25,
   "mix":true,
   "breeds":[  
      {  
         "id":"1"
      },
      {  
         "id":"2"
      }
   ],
   "description":"My dog Pucy",
   "dateOfBirth":"2015-03-22",
   "eyeColor":"B",
   "weightClass":"NA",
   "akcRegistrationNo":"NA",
   "accountId": UserID
}
Then the service response should be: 200

Scenario: TC-031_DOG_Positive: Update dog profile by removeing eyeColor
Given Create new user
And Login with valid credentials
And Create new purebreeds dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {  
"id": Dog_Id,
  "version": 0,
   "name": "Pucy",
   "gender":"M",
   "neutered":true,
   "age":25,
   "mix":true,
   "breeds":[  
      {  
         "id":"1"
      },
      {  
         "id":"2"
      }
   ],
  "description":"My dog Pucy",
   "dateOfBirth":"2015-03-22",
   "weight":500,
   "weightClass":"NA",
   "akcRegistrationNo":"NA",
   "accountId": UserID
}
Then the service response should be: 200


Scenario: TC-032_DOG_Positive: Update dog profile by removeing weightClass
Given Create new user
And Login with valid credentials
And Create new purebreeds dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {  
"id": Dog_Id,
  "version": 0,
   "name": "Pucy",
   "gender":"M",
   "neutered":true,
   "age":25,
   "mix":true,
   "breeds":[  
      {  
         "id":"1"
      },
      {  
         "id":"2"
      }
   ],
 
 "description":"My dog Pucy",
   "dateOfBirth":"2015-03-22",
   "weight":500,
   "eyeColor":"B",
   "akcRegistrationNo":"NA",
   "accountId": UserID
}
Then the service response should be: 200


Scenario: TC-033_DOG_Positive: Update dog profile by removeing akcRegistrationNo
Given Create new user
And Login with valid credentials
And Create new purebreeds dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {  
"id": Dog_Id,
  "version": 0,
   "name": "Pucy",
   "gender":"M",
   "neutered":true,
   "age":25,
   "mix":true,
   "breeds":[  
      {  
         "id":"1"
      },
      {  
         "id":"2"
      }
   ],
 
  "description":"My dog Pucy",
   "dateOfBirth":"2015-03-22",
   "weight":500,
   "eyeColor":"B",
   "weightClass":"NA",
     "accountId": UserID
}
Then the service response should be: 200


Scenario: TC-034_DOG_Positive: Update Dog profile with image 

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
      "name": "LS",
      "gender": "M",
      "neutered": false,
      "description": "My dog Pucy",
      "age" : 6,
      "mix": true,
      "breeds" : [
                        {
                        "name" : "w"
                        },
                        {
                        "name" : "Hall's Heeler"
                        },
                        {
                        "name" : "Cirneco dell'Etna"
                        }
                    ],
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID,
  "photoLargeUrl": "http://res.cloudinary.com/linkakc/image/upload/c_fill,h_1080,w_1080/v1475998765/int/users/2460/dogs/1257/rmco3ujzngeitfmgkz1p.png",
  "photoMediumUrl": "http://res.cloudinary.com/linkakc/image/upload/c_fill,h_200,w_200/v1475998765/int/users/2460/dogs/1257/rmco3ujzngeitfmgkz1p.png",
  "photoSmallUrl": "http://res.cloudinary.com/linkakc/image/upload/c_fill,h_96,w_96/v1475998765/int/users/2460/dogs/1257/rmco3ujzngeitfmgkz1p.png"
            
    }
Then the service response should be: 200
