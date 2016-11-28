Meta:
@Adventure
@Add_Details_To_an_Adventures_Positive_scenarios
@Adventure_Positive
@ReportName Adventure_Positive
@Link


Scenario: TC-001__ADVENTURE_Positive: Add Details To an Adventure
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is post
And service url equal : Start_an_adventure
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Adventure in Boston",
    "dogIds" : [ID],
    "startTime" : "2017-11-27T06:10:54Z"  
}
Then the service response should be: 201
And Retrieve second id from response
And Retrieve time stamp from response
And service method is post
And The service url equals: Add_details_to_an_adventure with Same_User_ID with Same_Adventure_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "details" : [
          {
            "point" : {
              "latitude" : 42.7200681,
              "longitude" : -75.8043038,
              "time" : "Time"
             },
             "photo" : {
                "details" : {
                  "public_id": "users/201/adventures",
                  "version": 1468239161,
                  "signature": "af6cdb7f465e8fc3b3156acd2603c341e99e1f94",
                  "width": 350,
                  "height": 350,
                  "format": "jpg",
                  "resource_type": "image",
                  "created_at": "Time",
                  "tags": [
                    "adventure,user,userID,user'semailId"
                  ],
                  "bytes": 54051,
                  "type": "upload",
                  "etag": "3c214717e9a04ba87d56fab0332daa7b",
                  "url": "http://res.cloudinary.com/linkakc/image/upload/v1468239161/users/201/myphoto.jpg",
                  "secure_url": "https://res.cloudinary.com/linkakc/image/upload/v1468239161/users/201/myphoto.jpg",
                  "original_filename": "myphoto"
               },
               "coverPhoto" : true,
               "time" : "Time"
            }
         },
         {
            "point" : {
              "latitude" : 42.7200681,
              "longitude" : -75.8043038,
              "time" : "Time"
             }
         }
    ]
} 
And the service response should be: 200