Meta:
@Dog
@Add_Dog_Profile_Photo_Positive_scenarios
@Dog_Positive
@ReportName Dog_Positive
@Link


Narrative:
In order to test Add_User_Profile_Photo service
As a tester
I want to make sure all return the code 200
                                  
Scenario: TC-001_DOG_Profile Photo: Add Photo to dog profile
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is get
When The service url equals: Get_Dog_Profile_Photo_details with Same_User_ID with Same_ID
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
  "public_id": "qa/users/360/rgvaaw3ot9jekegrm4mx",
  "version": 1475411888,
  "signature": "b286d9f615a21c4e94c41e0090cd6db09d0f7044",
  "width": 1024,
  "height": 768,
  "format": "jpg",
  "resource_type": "image",
  "created_at": "2016-10-02T12:38:08Z",
  "tags": [
    "userprofile",
    "QAuser",
    "360",
    "test1@gmail.com"
  ],
  "bytes": 879394,
  "type": "upload",
  "etag": "076e3caed758a1c18c91a0e9cae3368f",
  "url": "http://res.cloudinary.com/linkakc/image/upload/v1475411888/qa/users/359/rgvaaw3ot9jekegrm4mx.jpg",
  "secure_url": "https://res.cloudinary.com/linkakc/image/upload/v1475411888/qa/users/359/rgvaaw3ot9jekegrm4mx.jpg",
  "original_filename": "Chrysanthemum"
}

Then the service response should be: 200

