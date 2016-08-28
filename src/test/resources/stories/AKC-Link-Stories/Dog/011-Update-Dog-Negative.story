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


Scenario: TC-001_DOG_Negative: Update Dog using empty value for name
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
   "name": "",
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
Then the service response should be: 409



Scenario: TC-002_DOG_Negative: Update Dog using empty value for gender
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
   "gender":"",
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


Scenario: TC-003_DOG_Negative: Update Dog using empty value for neutered
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
   "neutered":"",
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

Scenario: TC-004_DOG_Negative: Update Dog using empty value for age
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
   "age":"",
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


Scenario: TC-005_DOG_Negative: Update Dog using empty value for description
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
   "description":"",
   "dateOfBirth":"2016-07-22",
   "weight":8.9,
   "eyeColor":"BROWN",
   "weightClass":"NA",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 200

Scenario: TC-006_DOG_Negative: Update Dog using empty value for dateOfBirth
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
   "dateOfBirth":"",
   "weight":8.9,
   "eyeColor":"BROWN",
   "weightClass":"NA",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 200

Scenario: TC-007_DOG_Negative: Update Dog using empty value for weight
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
   "weight":"",
   "eyeColor":"BROWN",
   "weightClass":"NA",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 200

Scenario: TC-008_DOG_Negative: Update Dog using empty value for eyeColor
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
   "eyeColor":"",
   "weightClass":"NA",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 200

Scenario: TC-009_DOG_Negative: Update Dog using empty value for weightClass
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
   "weightClass":"",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 200

Scenario: TC-010_DOG_Negative: Update Dog using empty value for akcRegistrationNo
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
   "akcRegistrationNo":"",
   "accountId": UserID
}
Then the service response should be: 200

Scenario: TC-011_DOG_Negative: Update Dog using empty value for All parameters
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {  
"id":"",
  "version": "",
   "name": "",
   "gender":"",
   "neutered":"",
   "age":"",
   "mix":"",
   "breeds":[  
      {  
         "id":""
      },
      {  
         "id":""
      },
      {  
         "name":""
      }
   ],
   "description":"",
   "dateOfBirth":"",
   "weight":"",
   "eyeColor":"",
   "weightClass":"",
   "akcRegistrationNo":"",
   "accountId":""
}
Then the service response should be: 409

Scenario: TC-012_DOG_Negative: Update Dog using Special characters for name
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
   "name": "@#@",
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
Then the service response should be: 200

Scenario: TC-013_DOG_Negative: Update Dog using Special characters for gender
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
   "gender":"#",
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

Scenario: TC-014_DOG_Negative: Update Dog using Special characters for neutered
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
   "neutered":"@@",
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
Then the service response should be: 400

Scenario: TC-015_DOG_Negative: Update Dog using Special characters for age
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
   "age":"@",
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
Then the service response should be: 400



Scenario: TC-016_DOG_Negative: Update Dog using Special characters for breedId1
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
   "mix":true,
   "breeds":[  
      {  
         "id":"@"
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
Then the service response should be: 400

Scenario: TC-017_DOG_Negative: Update Dog using Special characters for breedId2
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
   "mix":true,
   "breeds":[  
      {  
         "id":"1"
      },
      {  
         "id":"@"
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
Then the service response should be: 400



Scenario: TC-018_DOG_Negative: Update Dog using Special characters for description
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
   "description":"@",
   "dateOfBirth":"2016-07-22",
   "weight":8.9,
   "eyeColor":"BROWN",
   "weightClass":"NA",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 200

Scenario: TC-019_DOG_Negative: Update Dog using Special characters for dateOfBirth
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
   "dateOfBirth":"0000-00-00",
   "weight":8.9,
   "eyeColor":"BROWN",
   "weightClass":"NA",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 400

Scenario: TC-020_DOG_Negative: Update Dog using Special characters for weight
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
   "weight":"@",
   "eyeColor":"BROWN",
   "weightClass":"NA",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 400


Scenario: TC-021_DOG_Negative: Update Dog using Special characters for weightClass
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
   "weightClass":"@",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 200

Scenario: TC-022_DOG_Negative: Update Dog using Special characters for akcRegistrationNo
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
   "akcRegistrationNo":"@",
   "accountId": UserID
}
Then the service response should be: 200

Scenario: TC-023_DOG_Negative: Update Dog using Future date for DOB 
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
   "dateOfBirth":"2019-07-22",
   "weight":8.9,
   "eyeColor":"BROWN",
   "weightClass":"NA",
   "akcRegistrationNo":"ABC00123",
   "accountId": UserID
}
Then the service response should be: 409


Scenario: TC-024_DOG_Negative: Update Dog using a non matching accountId for accountId
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

Scenario: TC-025_DOG_Negative: Update Dog using data for a not existing user
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
   "accountId": "0"
}
Then the service response should be: 409

Scenario: TC-026_DOG_Negative: Update Dog using providing two breeds while mix is False
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
   "mix":false,
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
Then the service response should be: 409


Scenario: TC-027_DOG_Negative: Update Dog using more than the Maximum number of characters for name
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
      "description": "My dog Pucy",
      "age" : 6,
      "mix": true,
      "breeds" : [
                        {
                        "name" : "Custom Breed"
                        },
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
Then the service response should be: 409


Scenario: TC-028_DOG_Negative: Update Dog using more than the Maximum number of characters for description
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
      "description": "1MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy6785dogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850000",
      "age" : 6,
      "mix": true,
      "breeds" : [
                        {
                        "name" : "Custom Breed"
                        },
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
Then the service response should be: 409


Scenario: TC-029_DOG_Negative: Update Dog using more than the Maximum number of characters for eyeColor
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
                        "name" : "Custom Breed"
                        },
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
      "eyeColor": "BROWNBROWNBROWNBROWNBROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 409


Scenario: TC-030_DOG_Negative: Update Dog using more than the Maximum number of characters for weightClass
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
      "name": "Pucy,
      "gender": "M",
      "neutered": false,
      "description": "My dog Pucy",
      "age" : 6,
      "mix": true,
      "breeds" : [
                        {
                        "name" : "Custom Breed"
                        },
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
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 400


Scenario: TC-031_DOG_Negative: Update Dog using more than the Maximum number of characters for weightClass
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
      "name": "Pucy,
      "gender": "M",
      "neutered": false,
      "description": "My dog Pucy",
      "age" : 6,
      "mix": true,
      "breeds" : [
                        {
                        "name" : "Custom Breed"
                        },
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
      "akcRegistrationNo": "ABC123ASQWERT4E5FVG678BGVSF2SW1",
      "accountId": UserID
    }
Then the service response should be: 400


Scenario: TC-032_DOG_Negative: Update Dog using Code, HTML, Script, Query, URL for non string fields
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is put
And service url equals : Update_Dog with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": Select * from user where id = 2,
      "version": <p> test</p>,
      "name": "Pucy,
      "gender": "M",
      "neutered": false,
      "description": "My dog Pucy",
      "age" : "Given Create new user",
      "mix": true,
      "breeds" : [
                        {
                        "name" : "Custom Breed"
                        },
                        "id" : 2
                        },
                        {
                        "id" : 8
                        }
                    ],
      "dateOfBirth": "http://docs.com",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC123ASQWERT4E5FVG678BGVSF2SW1",
      "accountId": UserID
    }
Then the service response should be: 400


