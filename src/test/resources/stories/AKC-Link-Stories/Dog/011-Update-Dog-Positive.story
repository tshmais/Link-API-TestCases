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


Scenario: TC-001_DOG_Positive: Verify Update Dog service using valid user data  for and valid dog data
Given Create new user
And Login with valid cridintials
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
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200


Scenario: TC-002_DOG_Positive: Verify Update Dog service using duplicat dog data for same user
Given Create new user
And Login with valid cridintials
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
         "id":""
      },
      {  
         "id":""
      },
      {  
         "name":""
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

Scenario: TC-003_DOG_Positive: Verify Update Dog service using neutered "true" for valid dog data
Given Create new user
And Login with valid cridintials
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
         "id":""
      },
      {  
         "id":""
      },
      {  
         "name":""
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

Scenario: TC-004_DOG_Positive: Verify Update Dog service using gender "f" for valid dog data
Given Create new user
And Login with valid cridintials
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
      },
      {  
         "id":""
      },
      {  
         "name":""
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

Scenario: TC-004_DOG_Positive: Verify Update Dog service using gender "M" for valid dog data
Given Create new user
And Login with valid cridintials
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
         "id":""
      },
      {  
         "name":""
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

Scenario: TC-005_DOG_Positive: Verify Update Dog service using "breedSource" as "Listed  Breed"  for Only breedId1 is entered
Given Create new user
And Login with valid cridintials
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
         "id":""
      },
      {  
         "name":""
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

Scenario: TC-006_DOG_Positive: Verify Update Dog service using "breedSource" as "Listed  Breed"  for Both breedId1 and breedId2 are provided
Given Create new user
And Login with valid cridintials
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
      },
      {  
         "name":""
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






Scenario: TC-013_DOG_Positive: Verify Update Dog service using "breedSource" as "Unlisted Breed"  for only unListedBreedName is provided
Given Create new user
And Login with valid cridintials
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
         "name":"afghan hound"
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

Scenario: TC-014_DOG_Positive: Verify Update Dog service using "breedSource" as "Unlisted Breed" for unListedBreedName/breedId1/breedId2 are provided 

Given Create new user
And Login with valid cridintials
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
      },
      {  
         "name":"afghan hound"
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

Scenario: TC-015_DOG_Positive: Verify Update Dog service using "breedSource" as "unknown Breed" for breedId1, breedId2, unListedBreedNam and breedId1Percentage are provided
Given Create new user
And Login with valid cridintials
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
         "id":""
      },
      {  
         "id":""
      },
      {  
         "name":""
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



Scenario: TC-017_DOG_Positive: Verify Update Dog service using YYYY-MM-DD  for date format
Given Create new user
And Login with valid cridintials
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
         "id":""
      },
      {  
         "id":""
      },
      {  
         "name":""
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

Scenario: TC-018_DOG_Positive: Verify Update Dog service using "akcRegistrationNo" with char for valid dog data
Given Create new user
And Login with valid cridintials
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
         "id":""
      },
      {  
         "id":""
      },
      {  
         "name":""
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



Scenario: TC-020_DOG_Positive: Verify Update Dog service using 50 for Age
Given Create new user
And Login with valid cridintials
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
         "id":""
      },
      {  
         "id":""
      },
      {  
         "name":""
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

Scenario: TC-021_DOG_Positive: Verify Update Dog service using 25 for Age

Given Create new user
And Login with valid cridintials
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
         "id":""
      },
      {  
         "id":""
      },
      {  
         "name":""
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