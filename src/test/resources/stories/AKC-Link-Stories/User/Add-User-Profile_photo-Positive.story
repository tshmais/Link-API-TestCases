Meta:
@User
@Add_User_Profile_Photo_Positive_scenarios
@User_Positive
@ReportName User_Positive
@Link


Narrative:
In order to test Add_User_Profile_Photo service
As a tester
I want to make sure all return the code 200
                                  
Scenario: TC-001_USER_Profile Photo: Add Photo to user profile
Given Create new user
And Login with valid credentials
And service method is get
When service url equal : Get_User_Profile_Photo_details
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
And Retrieve tags response
And Retrieve folder response
And Retrieve signature response
And service method is post
And service url equal : Add_User_Profile_Photo
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "public_id": "qa/users/337/si95bpms6eopazn383om",
  "version": 1469359745,
  "signature": "d2c2ea8d20b9208d2e244a1ff1cee24a44d89f9a",
  "width": 1024,
  "height": 768,
  "format": "jpg",
  "resource_type": "image",
  "created_at": "2016-07-24T11:29:05Z",
  "tags": [
    "userprofile",
    "QAuser",
    "336",
    "qaa@gmail.com"
  ],
  "bytes": 780831,
  "type": "upload",
  "etag": "2b04df3ecc1d94afddff082d139c6f15",
  "url": "http://res.cloudinary.com/linkakc/image/upload/v1469359745/qa/users/336/si95bpms6eopazn383om.jpg",
  "secure_url": "https://res.cloudinary.com/linkakc/image/upload/v1469359745/qa/users/336/si95bpms6eopazn383om.jpg",
  "original_filename": "Koala"
}

Then the service response should be: 200