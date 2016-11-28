Meta:
@skip


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
  "public_id": "Generated_folder",
  "version": 1469088465,
  "signature": "Generated_signature",
  "width": 960,
  "height": 942,
  "format": "jpg",
  "resource_type": "image",
  "created_at": "2016-07-21T08:07:45Z",
  "tags": [
    "First_Tag",
    "Second_Tag",
    "Third_Tag",
    "Fourth_Tag"
  ],
  "bytes": 407319,
  "type": "upload",
  "etag": "f9c53d36a80f56a2d91c8ea29d1e4e65",
  "url": "http://res.cloudinary.com/linkakc/image/upload/v1469088465/int/users/10/ikjt0vdjivzupxdbfv0s.jpg",
  "secure_url": "https://res.cloudinary.com/linkakc/image/upload/v1469088465/int/users/10/ikjt0vdjivzupxdbfv0s.jpg",
  "original_filename": "test"

}

Then the service response should be: 200

