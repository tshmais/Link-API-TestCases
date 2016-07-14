Meta:
@Dog
@Add_user_dog_Positive_scenarios
@Dog_Positive
@ReportName Dog_Positive
@Link

Narrative:
In order to test User's_Dogs service
As a tester
I want to make sure all return the code 201 for POST scenarios and 200 for GET scenarios


Scenario: TC-001_DOG_Positive: Verify Add Dog service using valid user data for valid dog data

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "listed breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "",
    "unlistedBreedName": "",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
And I want to open a connection to MySQL DB
And Retrieve Json path $.id response
And I want to pull the data from the DB using TC-001_select_Dog query with response ID
And print the value



Scenario: TC-003_DOG_Positive: Verify Add Dog service using "breedSource" as "Listed  Breed"  and Only breedId1 is entered
 
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "listed breed",
    "breedId1" : "1",
    "breedId2" : "",
    "breedId1Percentage" : "",
    "unlistedBreedName": "",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
And I want to open a connection to MySQL DB
And Retrieve Json path $.id response
And I want to pull the data from the DB using TC-001_select_Dog query with response ID
And print the value


Scenario: TC-004_DOG_Positive: Verify Add Dog service using "breedSource" as Listed  Breed"  and Both breedId1 and breedId2 are provided
 
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "listed breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "",
    "unlistedBreedName": "",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}  
Then the service response should be: 201
And I want to open a connection to MySQL DB
And Retrieve Json path $.id response
And I want to pull the data from the DB using TC-001_select_Dog query with response ID
And print the value


Scenario: TC-005_DOG_Positive: Verify Add Dog service using "breedSource" as Listed  Breed"  and breedId1/breedId2/ are provided and breedId1Percentage is provided as 25

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "listed breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "25",
    "unlistedBreedName": "",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}   
Then the service response should be: 201
And I want to open a connection to MySQL DB
And Retrieve Json path $.id response
And I want to pull the data from the DB using TC-001_select_Dog query with response ID
And print the value



Scenario: TC-006_DOG_Positive: Verify Add Dog service using "breedSource" as Listed  Breed"  and breedId1/breedId2/ are provided and breedId1Percentage is provided as 50

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "listed breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "50",
    "unlistedBreedName": "",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
And I want to open a connection to MySQL DB
And Retrieve Json path $.id response
And I want to pull the data from the DB using TC-001_select_Dog query with response ID
And print the value


Scenario: TC-007_DOG_Positive: Verify Add Dog service using "breedSource" as Listed  Breed"  and breedId1/breedId2/ are provided and breedId1Percentage is provided as 75

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "listed breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "75",
    "unlistedBreedName": "",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
} 
Then the service response should be: 201
And I want to open a connection to MySQL DB
And Retrieve Json path $.id response
And I want to pull the data from the DB using TC-001_select_Dog query with response ID
And print the value


Scenario: TC-008_DOG_Positive: Verify Add Dog service using "breedSource" as Listed  Breed"  and breedId1/breedId2/ are provided and breedId1Percentage is provided as 25 and unlistedBreedName is "New Breed"
   
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "listed breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "75",
    "unlistedBreedName": "New Breed",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
And I want to open a connection to MySQL DB
And Retrieve Json path $.id response
And I want to pull the data from the DB using TC-001_select_Dog query with response ID
And print the value


Scenario: TC-009_DOG_Positive: Verify Add Dog service using "breedSource" as Unlisted  Breed"  and breedId1/breedId2/ are provided and breedId1Percentage is provided as 25 and unlistedBreedName is empty

   
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "Unlisted breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "25",
    "unlistedBreedName": "",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 409


Scenario: TC-010_DOG_Positive: Verify Add Dog service using "breedSource" as Unlisted  Breed"  and only unListedBreedName is provided

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "Unlisted breed",
    "breedId1" : "",
    "breedId2" : "",
    "breedId1Percentage" : "",
    "unlistedBreedName": "New Breed",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
And I want to open a connection to MySQL DB
And Retrieve Json path $.id response
And I want to pull the data from the DB using TC-001_select_Dog query with response ID
And print the value


Scenario:TC-011_DOG_Positive: Verify Add Dog service using "breedSource" as Unlisted  Breed"  and unListedBreedName/breedId1/breedId2 are provided 
 
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "Unlisted breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "",
    "unlistedBreedName": "New Breed",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
And I want to open a connection to MySQL DB
And Retrieve Json path $.id response
And I want to pull the data from the DB using TC-001_select_Dog query with response ID
And print the value


Scenario: TC-012_DOG_Positive: Verify Add Dog service using "breedSource" as unknown  Breed"  and breedId1, breedId2, unListedBreedNam and breedId1Percentage are provided
   
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "unknown breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "75",
    "unlistedBreedName": "New Breed",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
And I want to open a connection to MySQL DB
And Retrieve Json path $.id response
And I want to pull the data from the DB using TC-001_select_Dog query with response ID
And print the value


Scenario: TC-013_DOG_Positive: Verify Add Dog service using "breedSource" as unknown  Breed"  and breedId1, breedId2, unListedBreedNam and breedId1Percentage are empty/null
    
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "unknown breed",
    "breedId1" : "",
    "breedId2" : "",
    "breedId1Percentage" : "",
    "unlistedBreedName": "",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}   
Then the service response should be: 201
And I want to open a connection to MySQL DB
And Retrieve Json path $.id response
And I want to pull the data from the DB using TC-001_select_Dog query with response ID
And print the value


Scenario: TC-014_DOG_Positive: Verify Add Dog service using  YYYY-MM-DD date format

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "unknown breed",
    "breedId1" : "",
    "breedId2" : "",
    "breedId1Percentage" : "",
    "unlistedBreedName": "",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
} 
Then the service response should be: 201
And I want to open a connection to MySQL DB
And Retrieve Json path $.id response
And I want to pull the data from the DB using TC-001_select_Dog query with response ID
And print the value


Scenario: TC-015_DOG_Positive: Verify Add Dog service using neutered  as false
   
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "unknown breed",
    "breedId1" : "",
    "breedId2" : "",
    "breedId1Percentage" : "",
    "unlistedBreedName": "",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
And I want to open a connection to MySQL DB
And Retrieve Json path $.id response
And I want to pull the data from the DB using TC-001_select_Dog query with response ID
And print the value


Scenario: TC-016_DOG_Positive: Verify Add Dog service using neutered as true
   
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : true,
    "age" : 4,
    "breedSource": "unknown breed",
    "breedId1" : "",
    "breedId2" : "",
    "breedId1Percentage" : "",
    "unlistedBreedName": "",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}   
Then the service response should be: 201
And I want to open a connection to MySQL DB
And Retrieve Json path $.id response
And I want to pull the data from the DB using TC-001_select_Dog query with response ID
And print the value


Scenario: TC-017_DOG_Positive: Verify Add Dog service using 0 and Age

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 1,
    "breedSource": "unknown breed",
    "breedId1" : "",
    "breedId2" : "",
    "breedId1Percentage" : "",
    "unlistedBreedName": "",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
} 
Then the service response should be: 201
And I want to open a connection to MySQL DB
And Retrieve Json path $.id response
And I want to pull the data from the DB using TC-001_select_Dog query with response ID
And print the value


Scenario: TC-018_DOG_Positive: Verify Add Dog service using 50 and Age

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 50,
    "breedSource": "unlisted breed",
    "breedId1" : "",
    "breedId2" : "",
    "breedId1Percentage" : "",
    "unlistedBreedName": "New Breed",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}    
Then the service response should be: 201
And I want to open a connection to MySQL DB
And Retrieve Json path $.id response
And I want to pull the data from the DB using TC-001_select_Dog query with response ID
And print the value


Scenario: TC-019_DOG_Positive: Verify Add Dog service using 25 and Age
  
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 25,
    "breedSource": "listed breed",
    "breedId1" : "1",
    "breedId2" : "",
    "breedId1Percentage" : "",
    "unlistedBreedName": "",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
And I want to open a connection to MySQL DB
And Retrieve Json path $.id response
And I want to pull the data from the DB using TC-001_select_Dog query with response ID
And print the value
