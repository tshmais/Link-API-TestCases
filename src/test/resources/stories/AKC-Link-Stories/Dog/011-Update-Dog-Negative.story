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


Scenario: TC-001_DOG_Negative: Verify Update Dog service using empty data  for name
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



Scenario: TC-003_DOG_Negative: Verify Update Dog service using empty data  for gender
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


Scenario: TC-004_DOG_Negative: Verify Update Dog service using empty data  for neutered
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

Scenario: TC-005_DOG_Negative: Verify Update Dog service using empty data  for age
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


Scenario: TC-007_DOG_Negative: Verify Update Dog service using empty data for description
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

Scenario: TC-008_DOG_Negative: Verify Update Dog service using empty data for dateOfBirth
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

Scenario: TC-009_DOG_Negative: Verify Update Dog service using empty data  for weight
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

Scenario: TC-010_DOG_Negative: Verify Update Dog service using empty data for eyeColor
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

Scenario: TC-011_DOG_Negative: Verify Update Dog service using empty data  for weightClass
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

Scenario: TC-012_DOG_Negative: Verify Update Dog service using empty data  for akcRegistrationNo
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

Scenario: TC-013_DOG_Negative: Verify Update Dog service using empty data  for All parameters
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

Scenario: TC-014_DOG_Negative: Verify Update Dog service using invalid data for name
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

Scenario: TC-015_DOG_Negative: Verify Update Dog service using invalid data for gender
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

Scenario: TC-016_DOG_Negative: Verify Update Dog service using  invalid data  for neutered
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

Scenario: TC-017_DOG_Negative: Verify Update Dog service using invalid data for age
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



Scenario: TC-019_DOG_Negative: Verify Update Dog service using invalid data  for breedId1
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

Scenario: TC-020_DOG_Negative: Verify Update Dog service using invalid data  for breedId2
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



Scenario: TC-022_DOG_Negative: Verify Update Dog service using invalid data  for description
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

Scenario: TC-023_DOG_Negative: Verify Update Dog service using invalid data  for dateOfBirth
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

Scenario: TC-024_DOG_Negative: Verify Update Dog service using invalid data for weight
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


Scenario: TC-026_DOG_Negative: Verify Update Dog service using invalid data for weightClass
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

Scenario: TC-027_DOG_Negative: Verify Update Dog service using invalid data  for akcRegistrationNo
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

Scenario: TC-028_DOG_Negative: Verify Update Dog service using Future date for DOB 
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


Scenario: TC-029_DOG_Negative: Verify Update Dog service using Access denied for accountId
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

Scenario: TC-031_DOG_Negative: Verify Update Dog service using data for not exist user
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

Scenario: TC-006_DOG_Positive: Verify Update Dog service using "breedSource" as "Listed  Breed"  for Both breedId1 and breedId2 are provided
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


