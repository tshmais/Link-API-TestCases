Meta:
@Dog
@Update_Dog_Profile_Negative_scenarios
@Dog_Negative
@ReportName Dog_Negative
@Link


Narrative:
In order to test Update User Service
As a tester
I want to make sure all return the code 2xx


Scenario: TC-001_DOG_Negative: Verify Update Dog service using empty data  for name
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

 {
      "id": "DogID",
      "version": "0",
      "name": "",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "M",
      "neutered": false,
      "description": "My dog Pucy",
      "age": 4,
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
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

Scenario: TC-002_DOG_Negative: Verify Update Dog service using empty data  for photo
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

 {
      "id": "DogID",
      "version": "0",
      "name": "licy",
      "photo": "",
      "gender": "M",
      "neutered": false,
      "description": "My dog Pucy",
      "age": 4,
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
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

Scenario: TC-003_DOG_Negative: Verify Update Dog service using empty data  for gender
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

 {
      "id": "DogID",
      "version": "0",
      "name": "licy",
      "photo": "",
      "gender": "",
      "neutered": false,
      "description": "My dog Pucy",
      "age": 4,
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
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

Scenario: TC-003_DOG_Negative: Verify Update Dog service using empty data  for gender
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

 {
      "id": "DogID",
      "version": "0",
      "name": "licy",
      "photo": "",
      "gender": "",
      "neutered": false,
      "description": "My dog Pucy",
      "age": 4,
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
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

Scenario: TC-004_DOG_Negative: Verify Update Dog service using empty data  for neutered
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

 {
      "id": "DogID",
      "version": "0",
      "name": "licy",
      "photo": "",
      "gender": "",
      "neutered": "",
      "description": "My dog Pucy",
      "age": 4,
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
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

Scenario: TC-005_DOG_Negative: Verify Update Dog service using empty data  for age
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

 {
      "id": "DogID",
      "version": "0",
      "name": "licy",
      "photo": "",
      "gender": "",
      "neutered": "",
      "description": "My dog Pucy",
      "age": "",
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
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

Scenario: TC-006_DOG_Negative: Verify Update Dog service using empty data  for breedSource
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

 {
      "id": "DogID",
      "version": "0",
      "name": "licy",
      "photo": "",
      "gender": "",
      "neutered": "",
      "description": "My dog Pucy",
      "age": "",
      "breedSource": "",
      "unlistedBreedName":"New Breed",
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

Scenario: TC-007_DOG_Negative: Verify Update Dog service using empty data for description
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

 {
      "id": "DogID",
      "version": "0",
      "name": "licy",
      "photo": "",
      "gender": "",
      "neutered": "",
      "description": "",
      "age": "",
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
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

Scenario: TC-008_DOG_Negative: Verify Update Dog service using empty data for dateOfBirth
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

 {
      "id": "DogID",
      "version": "0",
      "name": "licy",
      "photo": "",
      "gender": "",
      "neutered": "",
      "description": "",
      "age": "",
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
      "breedId1" : "1",
      "breedId2" : "2",
      "breedId1Percentage" : "75",
      "dateOfBirth": "2",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-009_DOG_Negative: Verify Update Dog service using empty data  for weight
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

 {
      "id": "DogID",
      "version": "0",
      "name": "licy",
      "photo": "",
      "gender": "",
      "neutered": "",
      "description": "",
      "age": "",
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
      "breedId1" : "1",
      "breedId2" : "2",
      "breedId1Percentage" : "75",
      "dateOfBirth": "2",
      "weight": "",
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-010_DOG_Negative: Verify Update Dog service using empty data for eyeColor
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

 {
      "id": "DogID",
      "version": "0",
      "name": "licy",
      "photo": "",
      "gender": "",
      "neutered": "",
      "description": "",
      "age": "",
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
      "breedId1" : "1",
      "breedId2" : "2",
      "breedId1Percentage" : "75",
      "dateOfBirth": "2",
      "weight": "",
      "weightClass": "NA",
      "eyeColor": "",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-011_DOG_Negative: Verify Update Dog service using empty data  for weightClass
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

 {
      "id": "DogID",
      "version": "0",
      "name": "licy",
      "photo": "",
      "gender": "",
      "neutered": "",
      "description": "",
      "age": "",
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
      "breedId1" : "1",
      "breedId2" : "2",
      "breedId1Percentage" : "75",
      "dateOfBirth": "2",
      "weight": "",
      "weightClass": "",
      "eyeColor": "",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-012_DOG_Negative: Verify Update Dog service using empty data  for akcRegistrationNo
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

 {
      "id": "DogID",
      "version": "0",
      "name": "licy",
      "photo": "",
      "gender": "",
      "neutered": "",
      "description": "",
      "age": "",
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
      "breedId1" : "1",
      "breedId2" : "2",
      "breedId1Percentage" : "75",
      "dateOfBirth": "2",
      "weight": "",
      "weightClass": "",
      "eyeColor": "",
      "akcRegistrationNo": "",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-013_DOG_Negative: Verify Update Dog service using empty data  for All parameters
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

 {
      "id": "",
      "version": "",
      "name": "",
      "photo": "",
      "gender": "",
      "neutered": "",
      "description": "",
      "age": "",
      "breedSource": "",
      "unlistedBreedName":"",
      "breedId1" : "",
      "breedId2" : "",
      "breedId1Percentage" : "",
      "dateOfBirth": "",
      "weight": "",
      "weightClass": "",
      "eyeColor": "",
      "akcRegistrationNo": "",
      "accountId": UserID
    }
Then the service response should be: 409

Scenario: TC-014_DOG_Negative: Verify Update Dog service using invalid data for name
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

  {
      "id": "DogID",
      "version": "0",
      "name": "@#$",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "M",
      "neutered": false,
      "description": "My dog Pucy",
      "age": 4,
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
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

Scenario: TC-015_DOG_Negative: Verify Update Dog service using invalid data for gender
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

  {
      "id": "DogID",
      "version": "0",
      "name": "@#$",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "#",
      "neutered": false,
      "description": "My dog Pucy",
      "age": 4,
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
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

Scenario: TC-016_DOG_Negative: Verify Update Dog service using  invalid data  for neutered
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

  {
      "id": "DogID",
      "version": "0",
      "name": "@#$",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "F",
      "neutered": "@#",
      "description": "My dog Pucy",
      "age": 4,
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
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

Scenario: TC-017_DOG_Negative: Verify Update Dog service using invalid data for age
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

  {
      "id": "DogID",
      "version": "0",
      "name": "@#$",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "F",
      "neutered": "false",
      "description": "My dog Pucy",
      "age": "@",
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
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

Scenario: TC-018_DOG_Negative: Verify Update Dog service using invalid data for breedSource
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

  {
      "id": "DogID",
      "version": "0",
      "name": "@#$",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "F",
      "neutered": "false",
      "description": "My dog Pucy",
      "age": 5,
      "breedSource": "@#",
      "unlistedBreedName":"New Breed",
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

Scenario: TC-019_DOG_Negative: Verify Update Dog service using invalid data  for breedId1
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

  {
      "id": "DogID",
      "version": "0",
      "name": "@#$",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "F",
      "neutered": "false",
      "description": "My dog Pucy",
      "age": 5,
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
      "breedId1" : "@",
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

Scenario: TC-020_DOG_Negative: Verify Update Dog service using invalid data  for breedId2
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

  {
      "id": "DogID",
      "version": "0",
      "name": "@#$",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "F",
      "neutered": "false",
      "description": "My dog Pucy",
      "age": 5,
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
      "breedId1" : "2",
      "breedId2" : "$",
      "breedId1Percentage" : "75",
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-021_DOG_Negative: Verify Update Dog service using invalid data for breedId1Percentage
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

  {
      "id": "DogID",
      "version": "0",
      "name": "@#$",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "F",
      "neutered": "false",
      "description": "My dog Pucy",
      "age": 5,
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
      "breedId1" : "2",
      "breedId2" : "5",
      "breedId1Percentage" : "#",
      "dateOfBirth": "2013-03-07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-022_DOG_Negative: Verify Update Dog service using invalid data  for description
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

  {
      "id": "DogID",
      "version": "0",
      "name": "@#$",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "F",
      "neutered": "false",
      "description": "@#$",
      "age": 5,
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
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

Scenario: TC-023_DOG_Negative: Verify Update Dog service using invalid data  for dateOfBirth
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

  {
      "id": "DogID",
      "version": "0",
      "name": "@#$",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "F",
      "neutered": "false",
      "description": "test",
      "age": 5,
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
      "breedId1" : "2",
      "breedId2" : "5",
      "breedId1Percentage" : "25",
      "dateOfBirth": "2013/03/07",
      "weight": 8.9,
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-024_DOG_Negative: Verify Update Dog service using invalid data for weight
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

  {
      "id": "DogID",
      "version": "0",
      "name": "@#$",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "F",
      "neutered": "false",
      "description": "test",
      "age": 5,
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
      "breedId1" : "2",
      "breedId2" : "5",
      "breedId1Percentage" : "25",
      "dateOfBirth": "2013-03-07",
      "weight": "#$",
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-025_DOG_Negative: Verify Update Dog service using invalid data  for dateOfBirth
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

  {
      "id": "DogID",
      "version": "0",
      "name": "@#$",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "F",
      "neutered": "false",
      "description": "test",
      "age": 5,
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
      "breedId1" : "2",
      "breedId2" : "5",
      "breedId1Percentage" : "25",
      "dateOfBirth": "16-03-07",
      "weight": "",
      "weightClass": "NA",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-026_DOG_Negative: Verify Update Dog service using invalid data for weightClass
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

  {
      "id": "DogID",
      "version": "0",
      "name": "@#$",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "F",
      "neutered": "false",
      "description": "test",
      "age": 5,
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
      "breedId1" : "2",
      "breedId2" : "5",
      "breedId1Percentage" : "25",
      "dateOfBirth": "2014-03-07",
      "weight": "",
      "weightClass": "*",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "ABC00123",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-027_DOG_Negative: Verify Update Dog service using invalid data  for akcRegistrationNo
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

  {
      "id": "DogID",
      "version": "0",
      "name": "@#$",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "F",
      "neutered": "false",
      "description": "test",
      "age": 5,
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
      "breedId1" : "2",
      "breedId2" : "5",
      "breedId1Percentage" : "25",
      "dateOfBirth": "2014-03-07",
      "weight": "",
      "weightClass": "*",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "@#$",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-028_DOG_Negative: Verify Update Dog service using Future date for DOB 
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

  {
      "id": "DogID",
      "version": "0",
      "name": "@#$",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "F",
      "neutered": "false",
      "description": "test",
      "age": 5,
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
      "breedId1" : "2",
      "breedId2" : "5",
      "breedId1Percentage" : "25",
      "dateOfBirth": "2018-03-07",
      "weight": "",
      "weightClass": "*",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-028_DOG_Negative: Verify Update Dog service using Future date for DOB 
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

  {
      "id": "DogID",
      "version": "0",
      "name": "@#$",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "F",
      "neutered": "false",
      "description": "test",
      "age": 5,
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
      "breedId1" : "2",
      "breedId2" : "5",
      "breedId1Percentage" : "25",
      "dateOfBirth": "2018-03-07",
      "weight": "",
      "weightClass": "*",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "",
      "accountId": UserID
    }
Then the service response should be: 200

Scenario: TC-029_DOG_Negative: Verify Update Dog service using Access denied for accountId
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

  {
      "id": "DogID",
      "version": "0",
      "name": "@#$",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "F",
      "neutered": "false",
      "description": "test",
      "age": 5,
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
      "breedId1" : "2",
      "breedId2" : "5",
      "breedId1Percentage" : "25",
      "dateOfBirth": "2018-03-07",
      "weight": "",
      "weightClass": "*",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "",
      "accountId": "1"
    }
Then the service response should be: 200

Scenario: TC-031_DOG_Negative: Verify Update Dog service using data for not exist user
Given Create new user
And Login with valid cridintials
And Add Dog
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and DogID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 

  {
      "id": "DogID",
      "version": "0",
      "name": "@#$",
      "photo": "https://cdn.xyz.com/…..jpg",
      "gender": "F",
      "neutered": "false",
      "description": "test",
      "age": 5,
      "breedSource": "Listed Breed",
      "unlistedBreedName":"New Breed",
      "breedId1" : "2",
      "breedId2" : "5",
      "breedId1Percentage" : "25",
      "dateOfBirth": "2018-03-07",
      "weight": "",
      "weightClass": "*",
      "eyeColor": "BROWN",
      "akcRegistrationNo": "",
      "accountId": "0"
    }
Then the service response should be: 200