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


Scenario: TC-001_DOG_Positive: Update Dog using valid user data and valid dog data
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
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200



Scenario: TC-002_DOG_Positive: Update Dog using Max Boundaries for All “String” Fields
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
      "name": "PucyPucyPucyPucyPucyPucyPucyPucyPucyPucyPucyPucy50",
      "gender": "M",
      "neutered": false,
      "description": "MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy6785dogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850MydogPucyMydogPucyMydogPucyMydogPucyMydogPucy67850000",
      "age" : 50,
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
      "weightClass": "qwertyuiopoiuytrewq12345678ujhgfdsazxcvbnhgfv",
      "eyeColor": "BROWNBROWNBROWNBROWN",
      "akcRegistrationNo": "ABC123ASQWERT4E5FVG678BGVSF2SW",
      "accountId": UserID
    }
Then the service response should be: 200


Scenario: TC-003_DOG_Positive: Update Dog using Min Boundaries for All “String” fields
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
      "name": "a",
      "gender": "M",
      "neutered": false,
      "description": "a",
      "age" : 1,
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
      "weightClass": "a",
      "eyeColor": "a",
      "akcRegistrationNo": "a",
      "accountId": UserID
    }
Then the service response should be: 200


Scenario: TC-004_DOG_Positive: Update Dog using Code, HTML, Script, Query, URL for string fields
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
      "name": "Select * from user where id = 2",
      "gender": "M",
      "neutered": false,
      "description": "<p> test</p>",
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
      "eyeColor": "http://docs.com",
      "akcRegistrationNo": "Given Create new user",
      "accountId": UserID
    }
Then the service response should be: 200



Scenario: TC-005_DOG_Positive: Update Dog using duplicate dog data for same user
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
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
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


Scenario: TC-006_DOG_Positive: Update Dog using without optional fields in payload
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



Scenario: TC-007_DOG_Positive: Update Dog using gender "f" for valid dog data
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


Scenario: TC-008_DOG_Positive: Update Dog using gender "M" for valid dog data
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



Scenario: TC-009_DOG_Positive: Update Dog using mix as false and Only breedId1 is entered
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





Scenario: TC-010_DOG_Positive: Update Dog using mix as true and Name is provided
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


Scenario: TC-011_DOG_Positive: Update Dog using mix as true and Name/breedId1/breedId2 are provided 

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






Scenario: TC-012_DOG_Positive: Update Dog using YYYY-MM-DD  for date format
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


Scenario: TC-013_DOG_Positive: Update Dog using "akcRegistrationNo" with char for valid dog data
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



Scenario: TC-014_DOG_Positive: Update Dog using 50 for Age
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


Scenario: TC-015_DOG_Positive: Update Dog using 25 for Age

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
         "id":"2"
      },
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


Scenario: TC-016_DOG_Positive: Update Dog profile with image 

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

