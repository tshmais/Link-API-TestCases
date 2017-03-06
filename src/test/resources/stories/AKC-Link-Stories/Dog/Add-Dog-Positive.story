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



Scenario: TC-001_DOG_Positive: Add mix breeds Dog using one breed ID
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with  {
    "name" : "Pucy",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2016-07-22",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}

Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_dog query and response ID
And json path id should be : 0
And json path version should be : 1
And json path name should be : 2
And json path gender should be : 3
And json path description should be : 4
And json path age should be : 5
And json path dateOfBirth should be : 6
And json path weight should be : 7
And json path weightClass should be : 8
And json path eyeColor should be : 9
And json path akcRegistrationNo should be : 10
And json path accountId should be : 11
And I want to close the MySQL DB connection

Scenario: TC-002_DOG_Positive: Add mix breeds Dog using two breed ID
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with  {
    "name" : "Pucy",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    
                    {
                    "id" : "2"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2016-07-22",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}

Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_dog query and response ID
And json path id should be : 0
And json path version should be : 1
And json path name should be : 2
And json path gender should be : 3
And json path description should be : 4
And json path age should be : 5
And json path dateOfBirth should be : 6
And json path weight should be : 7
And json path weightClass should be : 8
And json path eyeColor should be : 9
And json path akcRegistrationNo should be : 10
And json path accountId should be : 11
And I want to close the MySQL DB connection





Scenario: TC-003_DOG_Positive: Add mix breeds Dog using custom breeds Name For FB user
Given Check if FB user created
And service method is post
And the service url is: Login_service
And add to the header Content-Type with value application/json
When we set Body with {
  "loginProvider": "FB",
  "loginProviderId": "170100890162315",
  "password": "",
   "loginProviderToken": "EAAVZBLCelUWcBAB0Al6CrAZAnN6tJC0eUSZAczJfSKfV9lZCVPBCm9bEpYSZCv52A8pXhyK4HBp7GKb6PnOx8g4X8zVggVg6SyTi1HKUh0e0SxZCczXP9DEohpxNj25VE6wqJJohl4ZAHz4E5gHsl5Ybk54L5UMEJgnOeLNtljufdTDsun0qqlPQyGC5FFkADZC9Bd0d8fme5ZCMKZBXWiNnED"
}
And the service response should be: 200
And Retrieve json path access_token response
And Retrieve user id userId response
And service method is post
And service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "mix": true,
    "breeds" : [
                    {
                    "name" : "test"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2016-07-22",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}

Then the service response should be: 201





Scenario: TC-004_DOG_Positive: Add Pure breeds Dog
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "mix": false,
    "breeds" : [
                    {
                    "id" : "1" }
                                    ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2016-07-22",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_dog query and response ID
And json path id should be : 0
And json path version should be : 1
And json path name should be : 2
And json path gender should be : 3
And json path description should be : 4
And json path age should be : 5
And json path dateOfBirth should be : 6
And json path weight should be : 7
And json path weightClass should be : 8
And json path eyeColor should be : 9
And json path akcRegistrationNo should be : 10
And json path accountId should be : 11
And I want to close the MySQL DB connection




Scenario: TC-005_DOG_Positive: Add mix breeds Dog using valid data to Validate maximum limitation
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "mix": true,
    "breeds" : [
                  
                    {
                    "name" : "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
                    }
                ],
    "description" : "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "dateOfBirth" : "2016-07-22",
    "weight" : 8.9,
    "eyeColor" : "aaaaaaaaaaaaaaaaaaaa",
    "weightClass" : "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "akcRegistrationNo" : "123456789aaaaaaaaaaaa123456789"
}
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_dog query and response ID
And json path id should be : 0
And json path version should be : 1
And json path name should be : 2
And json path gender should be : 3
And json path description should be : 4
And json path age should be : 5
And json path dateOfBirth should be : 6
And json path weight should be : 7
And json path weightClass should be : 8
And json path eyeColor should be : 9
And json path akcRegistrationNo should be : 10
And json path accountId should be : 11
And I want to close the MySQL DB connection


Scenario: TC-006_DOG_Positive: Add mix breeds Dog using valid data to Validate minimum limitation
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "a",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "mix": true,
    "breeds" : [
                  
                    {
                    "name" : "a"
                    }
                ],
    "description" : "a",
    "dateOfBirth" : "2016-07-22",
    "weight" : 8.9,
    "eyeColor" : "a",
    "weightClass" : "a",
    "akcRegistrationNo" : "1"
}
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_dog query and response ID
And json path id should be : 0
And json path version should be : 1
And json path name should be : 2
And json path gender should be : 3
And json path description should be : 4
And json path age should be : 5
And json path dateOfBirth should be : 6
And json path weight should be : 7
And json path weightClass should be : 8
And json path eyeColor should be : 9
And json path akcRegistrationNo should be : 10
And json path accountId should be : 11
And I want to close the MySQL DB connection


Scenario: TC-007_DOG_Positive: Add Dog using special character
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "יי",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "mix": true,
    "breeds" : [
                  
                    {
                    "name" : "יי"
                    }
                ],
    "description" : "יי",
    "dateOfBirth" : "2016-07-22",
    "weight" : 8.9,
    "eyeColor" : "יי",
    "weightClass" : "יי",
    "akcRegistrationNo" : "1"
}
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_dog query and response ID
And json path id should be : 0
And json path version should be : 1
And json path name should be : 2
And json path gender should be : 3
And json path description should be : 4
And json path age should be : 5
And json path dateOfBirth should be : 6
And json path weight should be : 7
And json path weightClass should be : 8
And json path eyeColor should be : 9
And json path akcRegistrationNo should be : 10
And json path accountId should be : 11
And I want to close the MySQL DB connection



Scenario:TC-008_DOG_Positive: Add mix breeds Dog using files and images formats
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy.html",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "mix": false,
    "breeds" : [
                    {
                    "name" : "test.JPEG"
                    }
                ],
    "description" : "My dog Pucy.g",
    "dateOfBirth" : "2016-07-22",
    "weight" : 8.9,
    "eyeColor" : "BROWN.GIF",
    "weightClass" : "NA.PNG",
    "akcRegistrationNo" : "ABC00123.css"
}
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_dog query and response ID
And json path id should be : 0
And json path version should be : 1
And json path name should be : 2
And json path gender should be : 3
And json path description should be : 4
And json path age should be : 5
And json path dateOfBirth should be : 6
And json path weight should be : 7
And json path weightClass should be : 8
And json path eyeColor should be : 9
And json path akcRegistrationNo should be : 10
And json path accountId should be : 11
And I want to close the MySQL DB connection



Scenario: TC-009_DOG_Positive: Add female dog using scripts and queries
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "<script>alert(document.cookie);</script>",
    "gender" : "f",
    "neutered" : false,
    "age" : 4,
    "mix": true,
    "breeds" : [
                   
                   {
                    "name" : "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
                    }
                ],
    "description" : "<!DOCTYPE html> <html> <body> <h1>My First Heading</h1> <p>My first paragraph.</p> </body> </html>",
    "dateOfBirth" : "2016-07-22",
    "weight" : 8.9,
    "eyeColor" : "{}",
    "weightClass" : "SELECT * FROM link_main.dog where id = 1;",
    "akcRegistrationNo" : "https://www.google.jo"
}
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_dog query and response ID
And json path id should be : 0
And json path version should be : 1
And json path name should be : 2
And json path gender should be : 3
And json path description should be : 4
And json path age should be : 5
And json path dateOfBirth should be : 6
And json path weight should be : 7
And json path weightClass should be : 8
And json path eyeColor should be : 9
And json path akcRegistrationNo should be : 10
And json path accountId should be : 11
And I want to close the MySQL DB connection



Scenario: TC-010_DOG_Positive: Add neutered Dog
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "f",
    "neutered" : true,
    "age" : 4,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2016-07-22",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_dog query and response ID
And json path id should be : 0
And json path version should be : 1
And json path name should be : 2
And json path gender should be : 3
And json path description should be : 4
And json path age should be : 5
And json path dateOfBirth should be : 6
And json path weight should be : 7
And json path weightClass should be : 8
And json path eyeColor should be : 9
And json path akcRegistrationNo should be : 10
And json path accountId should be : 11
And I want to close the MySQL DB connection


Scenario: TC-011_DOG_Positive: Add Dog has age of 0 
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "f",
    "neutered" : true,
    "age" : 0,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2016-07-22",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_dog query and response ID
And json path id should be : 0
And json path version should be : 1
And json path name should be : 2
And json path gender should be : 3
And json path description should be : 4
And json path age should be : 5
And json path dateOfBirth should be : 6
And json path weight should be : 7
And json path weightClass should be : 8
And json path eyeColor should be : 9
And json path akcRegistrationNo should be : 10
And json path accountId should be : 11
And I want to close the MySQL DB connection



Scenario: TC-012_DOG_Positive: Add Dog has age of 25
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "f",
    "neutered" : true,
    "age" : 25,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2016-07-22",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_dog query and response ID
And json path id should be : 0
And json path version should be : 1
And json path name should be : 2
And json path gender should be : 3
And json path description should be : 4
And json path age should be : 5
And json path dateOfBirth should be : 6
And json path weight should be : 7
And json path weightClass should be : 8
And json path eyeColor should be : 9
And json path akcRegistrationNo should be : 10
And json path accountId should be : 11
And I want to close the MySQL DB connection





Scenario: TC-013_DOG_Positive: Add Dog has age of 50 
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "f",
    "neutered" : true,
    "age" : 50,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2016-07-22",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_dog query and response ID
And json path id should be : 0
And json path version should be : 1
And json path name should be : 2
And json path gender should be : 3
And json path description should be : 4
And json path age should be : 5
And json path dateOfBirth should be : 6
And json path weight should be : 7
And json path weightClass should be : 8
And json path eyeColor should be : 9
And json path akcRegistrationNo should be : 10
And json path accountId should be : 11
And I want to close the MySQL DB connection



Scenario: TC-014_DOG_Positive: Add Dog has age of 5.1
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "M",
    "neutered" : false,
    "age" : 5.1,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    },
                    {
                    "name" : ""
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2016-07-22",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_dog query and response ID
And json path id should be : 0
And json path version should be : 1
And json path name should be : 2
And json path gender should be : 3
And json path description should be : 4
And json path age should be : 5
And json path dateOfBirth should be : 6
And json path weight should be : 7
And json path weightClass should be : 8
And json path eyeColor should be : 9
And json path akcRegistrationNo should be : 10
And json path accountId should be : 11
And I want to close the MySQL DB connection




Scenario: TC-015_DOG_Positive: Add DOB for Dog using ISO 8601 date format
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "f",
    "neutered" : true,
    "age" : 50,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    }
                ],
    "description" : "My dog",
    "dateOfBirth" : "2015-07-22",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_dog query and response ID
And json path id should be : 0
And json path version should be : 1
And json path name should be : 2
And json path gender should be : 3
And json path description should be : 4
And json path age should be : 5
And json path dateOfBirth should be : 6
And json path weight should be : 7
And json path weightClass should be : 8
And json path eyeColor should be : 9
And json path akcRegistrationNo should be : 10
And json path accountId should be : 11
And I want to close the MySQL DB connection




Scenario: TC-016_DOG_Positive: Add DOB for Dog using ISO 8601 date format curent date
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "f",
    "neutered" : true,
    "age" : 50,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    }
                ],
    "description" : "My dog",
    "dateOfBirth" : "2016-07-22",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_dog query and response ID
And json path id should be : 0
And json path version should be : 1
And json path name should be : 2
And json path gender should be : 3
And json path description should be : 4
And json path age should be : 5
And json path dateOfBirth should be : 6
And json path weight should be : 7
And json path weightClass should be : 8
And json path eyeColor should be : 9
And json path akcRegistrationNo should be : 10
And json path accountId should be : 11
And I want to close the MySQL DB connection





Scenario: TC-017_DOG_Positive: Add dog has a small weight 
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "f",
    "neutered" : true,
    "age" : 50,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    }
                ],
    "description" : "My dog",
    "dateOfBirth" : "2016-07-22",
    "weight" : 0.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_dog query and response ID
And json path id should be : 0
And json path version should be : 1
And json path name should be : 2
And json path gender should be : 3
And json path description should be : 4
And json path age should be : 5
And json path dateOfBirth should be : 6
And json path weight should be : 7
And json path weightClass should be : 8
And json path eyeColor should be : 9
And json path akcRegistrationNo should be : 10
And json path accountId should be : 11
And I want to close the MySQL DB connection




Scenario: TC-018_DOG_Positive: Add Dog has large weight
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "M",
    "neutered" : true,
    "age" : 4,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2016-07-22",
    "weight" :500.5,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}   
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_dog query and response ID
And json path id should be : 0
And json path version should be : 1
And json path name should be : 2
And json path gender should be : 3
And json path description should be : 4
And json path age should be : 5
And json path dateOfBirth should be : 6
And json path weight should be : 7
And json path weightClass should be : 8
And json path eyeColor should be : 9
And json path akcRegistrationNo should be : 10
And json path accountId should be : 11
And I want to close the MySQL DB connection




Scenario: TC-019_DOG_Positive: Add Dog with known eyeColor
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "M",
    "neutered" : true,
    "age" : 4,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2016-07-22",
    "weight" :8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}   
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_dog query and response ID
And json path id should be : 0
And json path version should be : 1
And json path name should be : 2
And json path gender should be : 3
And json path description should be : 4
And json path age should be : 5
And json path dateOfBirth should be : 6
And json path weight should be : 7
And json path weightClass should be : 8
And json path eyeColor should be : 9
And json path akcRegistrationNo should be : 10
And json path accountId should be : 11
And I want to close the MySQL DB connection




Scenario: TC-020_DOG_Positive: Add Dog with unknown eyeColor
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "M",
    "neutered" : true,
    "age" : 4,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2016-07-22",
    "weight" :8.9,
    "eyeColor" : "cds",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}   
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_dog query and response ID
And json path id should be : 0
And json path version should be : 1
And json path name should be : 2
And json path gender should be : 3
And json path description should be : 4
And json path age should be : 5
And json path dateOfBirth should be : 6
And json path weight should be : 7
And json path weightClass should be : 8
And json path eyeColor should be : 9
And json path akcRegistrationNo should be : 10
And json path accountId should be : 11
And I want to close the MySQL DB connection





Scenario: TC-021_DOG_Positive: Add Dog with unknown weightClass
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "M",
    "neutered" : true,
    "age" : 4,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2016-07-22",
    "weight" :8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}   
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_dog query and response ID
And json path id should be : 0
And json path version should be : 1
And json path name should be : 2
And json path gender should be : 3
And json path description should be : 4
And json path age should be : 5
And json path dateOfBirth should be : 6
And json path weight should be : 7
And json path weightClass should be : 8
And json path eyeColor should be : 9
And json path akcRegistrationNo should be : 10
And json path accountId should be : 11
And I want to close the MySQL DB connection


Scenario: TC-022_DOG_Positive: Add Dog with known weightClass
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "M",
    "neutered" : true,
    "age" : 4,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2016-07-22",
    "weight" :8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "1",
    "akcRegistrationNo" : "ABC00123"
}   
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_dog query and response ID
And json path id should be : 0
And json path version should be : 1
And json path name should be : 2
And json path gender should be : 3
And json path description should be : 4
And json path age should be : 5
And json path dateOfBirth should be : 6
And json path weight should be : 7
And json path weightClass should be : 8
And json path eyeColor should be : 9
And json path akcRegistrationNo should be : 10
And json path accountId should be : 11
And I want to close the MySQL DB connection

Scenario: TC-023_DOG_Positive: Add Dog with known akcRegistrationNo 
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "M",
    "neutered" : true,
    "age" : 4,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2016-07-22",
    "weight" :8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "1",
    "akcRegistrationNo" : "ABC00123"
}   
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_dog query and response ID
And json path id should be : 0
And json path version should be : 1
And json path name should be : 2
And json path gender should be : 3
And json path description should be : 4
And json path age should be : 5
And json path dateOfBirth should be : 6
And json path weight should be : 7
And json path weightClass should be : 8
And json path eyeColor should be : 9
And json path akcRegistrationNo should be : 10
And json path accountId should be : 11
And I want to close the MySQL DB connection



Scenario: TC-024_DOG_Positive: Add Dog with not applicable akc Registration No
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "M",
    "neutered" : true,
    "age" : 4,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2016-07-22",
    "weight" :8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "1",
    "akcRegistrationNo" : "NA"
}   
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_dog query and response ID
And json path id should be : 0
And json path version should be : 1
And json path name should be : 2
And json path gender should be : 3
And json path description should be : 4
And json path age should be : 5
And json path dateOfBirth should be : 6
And json path weight should be : 7
And json path weightClass should be : 8
And json path eyeColor should be : 9
And json path akcRegistrationNo should be : 10
And json path accountId should be : 11
And I want to close the MySQL DB connection


Scenario: TC-025_DOG_Positive: Add Dog without gender - key (Optional field)
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "neutered" : true,
    "age" : 4,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2016-07-22",
    "weight" :8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "1",
    "akcRegistrationNo" : "NA"
}  
Then the service response should be: 201

Scenario: TC-026_DOG_Positive: Add Dog without neutered - key (Optional field)
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "M",
    "neutered" : true,
    "age" : 4,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2016-07-22",
    "weight" :8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "1",
    "akcRegistrationNo" : "NA"
}   
Then the service response should be: 201

Scenario: TC-027_DOG_Positive: Add Dog without description - key (Optional field)
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "M",
    "neutered" : true,
    "age" : 4,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    }
                ],
    "dateOfBirth" : "2016-07-22",
    "weight" :8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "1",
    "akcRegistrationNo" : "NA"
}   
Then the service response should be: 201


Scenario: TC-028_DOG_Positive: Add Dog without DOB - key (Optional field)
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "M",
    "neutered" : true,
    "age" : 4,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    }
                ],
    "description" : "My dog Pucy",
    "weight" :8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "1",
    "akcRegistrationNo" : "NA"
}   
Then the service response should be: 201


Scenario: TC-029_DOG_Positive: Add Dog without weight - key (Optional field)
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "M",
    "neutered" : true,
    "age" : 4,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2016-07-22",
    "eyeColor" : "BROWN",
    "weightClass" : "1",
    "akcRegistrationNo" : "NA"
}   
Then the service response should be: 201


Scenario: TC-030_DOG_Positive: Add Dog without eyeColor - key (Optional field)
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "M",
    "neutered" : true,
    "age" : 4,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2016-07-22",
    "weight" :8.9,
    "weightClass" : "1",
    "akcRegistrationNo" : "NA"
}   
Then the service response should be: 201


Scenario: TC-031_DOG_Positive: Add Dog without weightClass - key (Optional field)
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "M",
    "neutered" : true,
    "age" : 4,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2016-07-22",
    "weight" :8.9,
    "eyeColor" : "BROWN",
    "akcRegistrationNo" : "NA"
}   
Then the service response should be: 201


Scenario: TC-032_DOG_Positive: Add Dog without akcRegistrationNo - key (Optional field)
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "M",
    "neutered" : true,
    "age" : 4,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2016-07-22",
    "weight" :8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "1"
}   
Then the service response should be: 201