Meta:
@skip



Narrative:
In order to test Update User Service
As a tester
I want to make sure all return the code 2xx


Scenario: TC-001_DOG_Positive: Verify Update Dog service using valid user data  for and valid dog data
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": "DogID",
      "version": 0,
      "name": "Update",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "M",
      "neutered": false,
      "description": "My dog Pucy",
      "age": 4,
      "breedSource": "Listed Breed",
      "breedId1" : "1",
      "breedId2" : "2",
      "breedId1Percentage" : "75",
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "12300123",
      "accountId": UserID
    }
Then the service response should be: 200


Scenario: TC-002_DOG_Positive: Verify Update Dog service using duplicat dog data for same user
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": DogID,
      "version": 0,
      "name": "Update1",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "M",
      "neutered": false,
      "description": "My dog Pucy",
      "age": 4,
      "breedSource": "Listed Breed",
      "breedId1" : "1",
      "breedId2" : "2",
      "breedId1Percentage" : "75",
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-003_DOG_Positive: Verify Update Dog service using neutered "true" for valid dog data
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": DogID,
      "version": 0,
      "name": "Update1",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "M",
      "neutered": true,
      "description": "My dog Pucy",
      "age": 4,
      "breedSource": "Listed Breed",
      "breedId1" : "1",
      "breedId2" : "2",
      "breedId1Percentage" : "75",
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-004_DOG_Positive: Verify Update Dog service using gender "f" for valid dog data
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": DogID,
      "version": 0,
      "name": "Update1",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "M",
      "neutered": true,
      "description": "My dog Pucy",
      "age": 4,
      "breedSource": "Listed Breed",
      "breedId1" : "1",
      "breedId2" : "2",
      "breedId1Percentage" : "75",
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-004_DOG_Positive: Verify Update Dog service using gender "f" for valid dog data
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": DogID,
      "version": 0,
      "name": "Update1",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "M",
      "neutered": true,
      "description": "My dog Pucy",
      "age": 4,
      "breedSource": "Listed Breed",
      "breedId1" : "1",
      "breedId2" : "2",
      "breedId1Percentage" : "75",
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-005_DOG_Positive: Verify Update Dog service using "breedSource" as "Listed  Breed"  for Only breedId1 is entered
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": DogID,
      "version": 0,
      "name": "Pucy",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "M",
      "neutered": true,
      "description": "My dog Pucy",
      "age": 4,
      "breedSource": "Listed Breed",
      "breedId1" : "1",
      "breedId2" : "",
      "breedId1Percentage" : "75",
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-006_DOG_Positive: Verify Update Dog service using "breedSource" as "Listed  Breed"  for Both breedId1 and breedId2 are provided
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": DogID,
      "version": 0,
      "name": "Pucy",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "M",
      "neutered": true,
      "description": "My dog Pucy",
      "age": 4,
      "breedSource": "Listed Breed",
      "breedId1" : "1",
      "breedId2" : "2",
      "breedId1Percentage" : "75",
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200


Scenario: TC-007_DOG_Positive: Verify Update Dog service using "breedSource" as "Listed  Breed"  for breedId1/breedId2/ are provided and breedId1Percentage is provided as 25
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": DogID,
      "version": 0,
      "name": "Pucy",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "M",
      "neutered": true,
      "description": "My dog Pucy",
      "age": 4,
      "breedSource": "Listed Breed",
      "breedId1" : "1",
      "breedId2" : "2",
      "breedId1Percentage" : "25",
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-008_DOG_Positive: Verify Update Dog service using "breedSource" as "Listed  Breed"  for breedId1/breedId2/ are provided and breedId1Percentage is provided as 50
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": DogID,
      "version": 0,
      "name": "Pucy",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "M",
      "neutered": true,
      "description": "My dog Pucy",
      "age": 4,
      "breedSource": "Listed Breed",
      "breedId1" : "1",
      "breedId2" : "2",
      "breedId1Percentage" : "50",
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-009_DOG_Positive: Verify Update Dog service using "breedSource" as "Listed  Breed"  for breedId1/breedId2/ are provided and breedId1Percentage is provided as 75
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": DogID,
      "version": 0,
      "name": "Pucy",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "M",
      "neutered": true,
      "description": "My dog Pucy",
      "age": 4,
      "breedSource": "Listed Breed",
      "breedId1" : "1",
      "breedId2" : "2",
      "breedId1Percentage" : "75",
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-010_DOG_Positive: Verify Update Dog service using "breedSource" as "Listed  Breed"  for breedId1/breedId2/ are provided and breedId1Percentage is provided as 25 and unlistedBreedName is "New Breed"
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": DogID,
      "version": 0,
      "name": "Pucy",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "M",
      "neutered": true,
      "description": "My dog Pucy",
      "age": 4,
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed1",
      "breedId1" : "1",
      "breedId2" : "2",
      "breedId1Percentage" : "75",
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-011_DOG_Positive: Verify Update Dog service using "breedSource" as "Listed  Breed" for breedId1/breedId2/ are provided and breedId1Percentage is provided as 25 and unlistedBreedName is empty
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": DogID,
      "version": 0,
      "name": "Pucy",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "M",
      "neutered": true,
      "description": "My dog Pucy",
      "age": 4,
      "breedSource": "Listed Breed",
      "unlistedBreedName":"",
      "breedId1" : "1",
      "breedId2" : "2",
      "breedId1Percentage" : "75",
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-013_DOG_Positive: Verify Update Dog service using "breedSource" as "Unlisted Breed"  for only unListedBreedName is provided
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": DogID,
      "version": 0,
      "name": "Pucy",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "M",
      "neutered": true,
      "description": "My dog Pucy",
      "age": 4,
      "breedSource": "Unlisted Breed",
      "unlistedBreedName":"test",
      "breedId1" : "",
      "breedId2" : "",
      "breedId1Percentage" : "",
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-014_DOG_Positive: Verify Update Dog service using "breedSource" as "Unlisted Breed" for unListedBreedName/breedId1/breedId2 are provided 

Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": DogID,
      "version": 0,
      "name": "Pucy",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "M",
      "neutered": true,
      "description": "My dog Pucy",
      "age": 4,
      "breedSource": "Unlisted Breed",
      "unlistedBreedName":"test",
      "breedId1" : "2",
      "breedId2" : "5",
      "breedId1Percentage" : "",
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-015_DOG_Positive: Verify Update Dog service using "breedSource" as "unknown Breed" for breedId1, breedId2, unListedBreedNam and breedId1Percentage are provided
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": DogID,
      "version": 0,
      "name": "Pucy",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "M",
      "neutered": true,
      "description": "My dog Pucy",
      "age": 4,
      "breedSource": "unknown Breed",
      "unlistedBreedName":"test",
      "breedId1" : "2",
      "breedId2" : "5",
      "breedId1Percentage" : "25",
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-016_DOG_Positive: Verify Update Dog service using "breedSource" as "unknown Breed" for breedId1, breedId2, unListedBreedNam and breedId1Percentage are empty/null
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": DogID,
      "version": 0,
      "name": "Pucy",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "M",
      "neutered": true,
      "description": "My dog Pucy",
      "age": 4,
      "breedSource": "unknown Breed",
      "unlistedBreedName":"",
      "breedId1" : "",
      "breedId2" : "",
      "breedId1Percentage" : "",
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-017_DOG_Positive: Verify Update Dog service using YYYY-MM-DD  for date format
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": DogID,
      "version": 0,
      "name": "Pucy",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "M",
      "neutered": true,
      "description": "My dog Pucy",
      "age": 4,
      "breedSource": "unknown Breed",
      "unlistedBreedName":"",
      "breedId1" : "",
      "breedId2" : "",
      "breedId1Percentage" : "",
      "dateOfBirth": "2015-03-07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-018_DOG_Positive: Verify Update Dog service using "akcRegistrationNo" with char for valid dog data
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": DogID,
      "version": 0,
      "name": "Pucy",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "M",
      "neutered": true,
      "description": "My dog Pucy",
      "age": 4,
      "breedSource": "unknown Breed",
      "unlistedBreedName":"",
      "breedId1" : "",
      "breedId2" : "",
      "breedId1Percentage" : "",
      "dateOfBirth": "2015-03-07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-019_DOG_Positive: Verify Update Dog service using 0 for Age
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": DogID,
      "version": 0,
      "name": "Pucy",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "M",
      "neutered": true,
      "description": "My dog Pucy",
      "age": 0,
      "breedSource": "unknown Breed",
      "unlistedBreedName":"",
      "breedId1" : "",
      "breedId2" : "",
      "breedId1Percentage" : "",
      "dateOfBirth": "2015-03-07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-020_DOG_Positive: Verify Update Dog service using 50 for Age
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": DogID,
      "version": 0,
      "name": "Pucy",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "M",
      "neutered": true,
      "description": "My dog Pucy",
      "age": 50,
      "breedSource": "unknown Breed",
      "unlistedBreedName":"",
      "breedId1" : "",
      "breedId2" : "",
      "breedId1Percentage" : "",
      "dateOfBirth": "2015-03-07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-021_DOG_Positive: Verify Update Dog service using 25 for Age

Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
      "id": DogID,
      "version": 0,
      "name": "Pucy",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "M",
      "neutered": true,
      "description": "My dog Pucy",
      "age": 25,
      "breedSource": "unknown Breed",
      "unlistedBreedName":"",
      "breedId1" : "",
      "breedId2" : "",
      "breedId1Percentage" : "",
      "dateOfBirth": "2015-03-07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200