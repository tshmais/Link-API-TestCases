Meta:
@Dog
@Add_user_dog_Negative_scenarios
@Dog_Negative
@ReportName Dog_Negative
@Link

Narrative:
In order to test User's_Dogs service
As a tester
I want to make sure all return the code 4xx for POST scenarios and 2xx for optinal parameter

Scenario: TC-001_DOG_Negative: Verify Add Dog service using empty data  for name

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 0,
    "breedSource": "unlisted breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "",
    "unlistedBreedName": "test",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
    
Then the service response should be: 409
|--And json response should equal:Negative_TC-001_Post_Dog_to_User_service


Scenario: TC-002_DOG_Negative: Verify Add Dog service using empty data  for photo

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Dog Name",
    "photo" : "",
    "gender" : "M",
    "neutered" : false,
    "age" : 1,
    "breedSource": "unlisted breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "",
    "unlistedBreedName": "test",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
|--And json response should equal:Negative_TC-002_Post_Dog_to_User_service


Scenario: TC-003_DOG_Negative: Verify Add Dog service using empty data  for gender

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Dog Name",
    "photo" : "photo",
    "gender" : "",
    "neutered" : false,
    "age" : 1,
    "breedSource": "unlisted breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "",
    "unlistedBreedName": "test",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
|--And json response should equal:Negative_TC-002_Post_Dog_to_User_service


Scenario: TC-004_DOG_Negative: Verify Add Dog service using empty data  for neutered

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Dog Name",
    "photo" : "photo",
    "gender" : "M",
    "neutered" : "",
    "age" : 1,
    "breedSource": "unlisted breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "",
    "unlistedBreedName": "test",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
|--And json response should equal:Negative_TC-002_Post_Dog_to_User_service


Scenario: TC-005_DOG_Negative: Verify Add Dog service using empty data  for age

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Dog Name",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : "",
    "breedSource": "unlisted breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "",
    "unlistedBreedName": "test",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 409
And json response should equal:Negative_TC-005_Post_Dog_to_User_service


Scenario: TC-006_DOG_Negative: Verify Add Dog service using empty data  for breedSource

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Dog Name",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : "5",
    "breedSource": "",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "",
    "unlistedBreedName": "test",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
    
Then the service response should be: 409
|--And json response should equal:Negative_TC-006_Post_Dog_to_User_service


Scenario: TC-007_DOG_Negative: Verify Add Dog service when breedSource is "listed Breed" and breedId1, breedId2 are empty


Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Dog Name",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : "5",
    "breedSource": "Listed Breed",
    "breedId1" : "",
    "breedId2" : "",
    "breedId1Percentage" : "",
    "unlistedBreedName": "test",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
    
Then the service response should be: 409
|--And json response should equal:Negative_TC-006_Post_Dog_to_User_service


Scenario: TC-008_DOG_Negative: Verify Add Dog service when breedSource is "listed Breed" and only breedId2 is provided

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Dog Name",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : "5",
    "breedSource": "Listed Breed",
    "breedId1" : "",
    "breedId2" : "2",
    "breedId1Percentage" : "",
    "unlistedBreedName": "test",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
    
Then the service response should be: 409
|--And json response should equal:Negative_TC-006_Post_Dog_to_User_service


Scenario: TC-009_DOG_Negative: Verify Add Dog service when breedSource is "listed Breed" and breedId1, breedId2 are provided and breedId1Percentage is 40

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Dog Name",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : "3",
    "breedSource": "listed breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "40",
    "unlistedBreedName": "test",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
    
Then the service response should be: 409
|--And json response should equal:Negative_TC-006_Post_Dog_to_User_service


Scenario: TC-010_DOG_Negative: Verify Add Dog service when breedSource is "unlisted Breed" and unlistedBreedName is empty

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Dog Name",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : "3",
    "breedSource": "unlisted breed",
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
    
Then the service response should be: 409
|--And json response should equal:Negative_TC-006_Post_Dog_to_User_service


Scenario: TC-011_DOG_Negative: Verify Add Dog service when breedSource is "unlisted Breed" and unlistedBreedName is more than 100 character long

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Dog Name",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : "3",
    "breedSource": "unlisted breed",
    "breedId1" : "",
    "breedId2" : "",
    "breedId1Percentage" : "",
    "unlistedBreedName": "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
    
Then the service response should be: 409
|--And json response should equal:Negative_TC-006_Post_Dog_to_User_service


Scenario: TC-012_DOG_Negative: Verify Add Dog service when breedSource is "unlisted Breed" and breedId1, breedId2 are provided and breedId1Percentage is 40

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Dog Name",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : "3",
    "breedSource": "unlisted breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "50",
    "unlistedBreedName": "New Breed",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
    
Then the service response should be: 201
|--And json response should equal:Negative_TC-006_Post_Dog_to_User_service


Scenario: TC-013_DOG_Negative: Verify Add a Dog service using empty data  for eyeColor

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Dog Name",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : "3",
    "breedSource": "unlisted breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "50",
    "unlistedBreedName": "New Breed",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
    
Then the service response should be: 201
|--And json response should equal:Negative_TC-006_Post_Dog_to_User_service


Scenario: TC-014_DOG_Negative: Verify Add a Dog service using empty data  for weightClass

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Dog Name",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : "3",
    "breedSource": "unlisted breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "50",
    "unlistedBreedName": "New Breed",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "",
    "akcRegistrationNo" : "ABC00123"
}
    
Then the service response should be: 201
|--And json response should equal:Negative_TC-006_Post_Dog_to_User_service


Scenario: TC-015_DOG_Negative: Verify Add a Dog service using empty data  for akcRegistrationNo

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Dog Name",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : "3",
    "breedSource": "unlisted breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "50",
    "unlistedBreedName": "New Breed",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : ""
}
    
Then the service response should be: 201
|--And json response should equal:Negative_TC-006_Post_Dog_to_User_service


Scenario: TC-016_DOG_Negative: Verify Add a Dog service using  invalid data  for name

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : " ",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : "3",
    "breedSource": "unlisted breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "50",
    "unlistedBreedName": "New Breed",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 409
|--And json response should equal:Negative_TC-006_Post_Dog_to_User_service

Scenario: TC-017_DOG_Negative: Verify Add a Dog service using invalid data  for photo

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Dog Name",
    "photo" : "@@@@@",
    "gender" : "M",
    "neutered" : false,
    "age" : "3",
    "breedSource": "unlisted breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "50",
    "unlistedBreedName": "New Breed",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
|--And json response should equal:Negative_TC-006_Post_Dog_to_User_service


Scenario: TC-018_DOG_Negative: Verify Add Dog service using invalid data  for gender

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Dog Name",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "S",
    "neutered" : false,
    "age" : "3",
    "breedSource": "unlisted breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "",
    "unlistedBreedName": "test",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 409
|--And json response should equal:Negative_TC-0018_Post_Dog_to_User_service


Scenario: TC-019_DOG_Negative: Verify Add Dog service using invalid data  for neutered

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Dog Name",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : "sss",
    "age" : "3",
    "breedSource": "unknown breed",
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
Then the service response should be: 400


Scenario: TC-020_DOG_Negative: Verify Add Dog service using invalid data  for age

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "Pucy",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "age": "*",
  "breedSource": "",
  "breedId1": "1",
  "breedId2": "2",
  "breedId1Percentage": "75",
  "unlistedBreedName": "New Breed",
  "description": "My dog Pucy",
  "dateOfBirth": "2013-03-07",
  "weight": 8.9,
  "eyeColor": "BROWN",
  "weightClass": "NA",
  "akcRegistrationNo": "ABC00123"
}
Then the service response should be: 400


Scenario: TC-021_DOG_Negative: Verify Add Dog service using invalid data  for purebred


Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Dog Name",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : "3",
    "breedSource": "test",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "50",
    "unlistedBreedName": "test",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 409


Scenario: TC-022_DOG_Negative: Verify Add a Dog service using invalid data  for breedId1

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Dog Name",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : "3",
    "breedSource": "listed breed",
    "breedId1" : "s",
    "breedId2" : "2",
    "breedId1Percentage" : "50",
    "unlistedBreedName": "test",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 400


Scenario: TC-023_DOG_Negative: Verify Add a Dog service using invalid data  for breedId2

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Dog Name",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : "3",
    "breedSource": "listed breed",
    "breedId1" : "1",
    "breedId2" : "gf",
    "breedId1Percentage" : "50",
    "unlistedBreedName": "test",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 400


Scenario: TC-024_DOG_Negative: Verify Add Dog service using invalid data  for breed_id1_percentage

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Dog Name",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : "3",
    "breedSource": "listed breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "39",
    "unlistedBreedName": "test",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}

Then the service response should be: 409



Scenario: TC-025_DOG_Negative: Verify Add Dog service using invalid data  for description

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "Pucy",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "age": 4,
  "breedSource": "Listed Breed",
  "breedId1": "1",
  "breedId2": "2",
  "breedId1Percentage": "75",
  "unlistedBreedName": "New Breed",
  "description": "#@",
  "dateOfBirth": "2013-03-07",
  "weight": 8.9,
  "eyeColor": "BROWN",
  "weightClass": "NA",
  "akcRegistrationNo": "ABC00123"
}
Then the service response should be: 201
|--And json response should equal:Negative_TC-0025_Post_Dog_to_User_service


Scenario: TC-026_DOG_Negative: Verify Add Dog service using invalid data  for dateOfBirth

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "Pucy",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "age": 4,
  "breedSource": "Listed Breed",
  "breedId1": "1",
  "breedId2": "2",
  "breedId1Percentage": "75",
  "unlistedBreedName": "New Breed",
  "description": "My dog Pucy",
  "dateOfBirth": "00\00\00",
  "weight": 8.9,
  "eyeColor": "BROWN",
  "weightClass": "NA",
  "akcRegistrationNo": "ABC00123"
}
Then the service response should be: 400


Scenario: TC-027_DOG_Negative: Verify Add Dog service using invalid data  for weight

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "Pucy",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "age": 4,
  "breedSource": "Listed Breed",
  "breedId1": "1",
  "breedId2": "2",
  "breedId1Percentage": "75",
  "unlistedBreedName": "New Breed",
  "description": "My dog Pucy",
  "dateOfBirth": "2013-03-07",
  "weight": "@",
  "eyeColor": "BROWN",
  "weightClass": "NA",
  "akcRegistrationNo": "ABC00123"
}
Then the service response should be: 400


Scenario: TC-028_DOG_Negative: Verify Add a Dog service using Future date for dateOfBirth

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Dog Name",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : "3",
    "breedSource": "listed breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "50",
    "unlistedBreedName": "test",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2017-12-08",
    "weight" : "8.9",
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 409


Scenario: TC-029_DOG_Negative: Verify Add a Dog service using invalid data  for weightClass

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Dog Name",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : "3",
    "breedSource": "listed breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "50",
    "unlistedBreedName": "test",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2013-12-08",
    "weight" : "8.9",
    "eyeColor" : "BROWN",
    "weightClass" : "@@",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201


Scenario: TC-030_DOG_Negative: Verify Add a Dog service using invalid data  for akcRegistrationNo

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Dog Name",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : "3",
    "breedSource": "listed breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "50",
    "unlistedBreedName": "test",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2013-12-08",
    "weight" : "8.9",
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "@@"
}
Then the service response should be: 201


Scenario: TC-031_DOG_Negative: Verify Add Dog service using empty data  for all

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "",
  "photo": "",
  "gender": "",
  "neutered": "",
  "age": "",
  "breedSource": "",
  "breedId1": "",
  "breedId2": "",
  "breedId1Percentage": "",
  "unlistedBreedName": "",
  "description": "",
  "dateOfBirth": "",
  "weight": "",
  "eyeColor": "",
  "weightClass": "",
  "akcRegistrationNo": ""
}
Then the service response should be: 409
|--And json response should equal:Negative_TC-0031_Post_Dog_to_User_service


Scenario: TC-032_DOG_Negative: Verify Add Dog service using invalid data  (-1,0,24, 26,49,51,74,76,60,100,255) for breed_id1_percentage

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "Pucy",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "age": 4,
  "breedSource": "Listed Breed",
  "breedId1": "1",
  "breedId2": "2",
  "breedId1Percentage": "0",
  "unlistedBreedName": "New Breed",
  "description": "My dog Pucy",
  "dateOfBirth": "2013-03-07",
  "weight": 8.9,
  "eyeColor": "BROWN",
  "weightClass": "NA",
  "akcRegistrationNo": "ABC00123"
}
Then the service response should be: 409
|--And json response should equal:Negative_TC-0032_Post_Dog_to_User_service


Scenario: TC-033_DOG_Negative: Verify Add Dog service using  invalid data (-1) for age

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "Pucy",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "age": 4,
  "breedSource": "Listed Breed",
  "breedId1": "1",
  "breedId2": "2",
  "breedId1Percentage": "-1",
  "unlistedBreedName": "New Breed",
  "description": "My dog Pucy",
  "dateOfBirth": "2013-03-07",
  "weight": 8.9,
  "eyeColor": "BROWN",
  "weightClass": "NA",
  "akcRegistrationNo": "ABC00123"
}
Then the service response should be: 409
|--And json response should equal:Negative_TC-0033_Post_Dog_to_User_service


Scenario: TC-034_DOG_Negative: Verify Add Dog service using invalid data  (51) for age

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "Pucy",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "age": 51,
  "breedSource": "Listed Breed",
  "breedId1": "1",
  "breedId2": "2",
  "breedId1Percentage": "50",
  "unlistedBreedName": "New Breed",
  "description": "My dog Pucy",
  "dateOfBirth": "2013-03-07",
  "weight": 8.9,
  "eyeColor": "BROWN",
  "weightClass": "NA",
  "akcRegistrationNo": "ABC00123"
}
Then the service response should be: 409
|--And json response should equal:Negative_TC-0034_Post_Dog_to_User_service
