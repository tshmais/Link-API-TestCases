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


Scenario: TC-001_DOG_Positive: Add Dog using valid user data for valid dog data
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
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    },
                    {
                    "name" : "custom Name"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2016-07-22",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}


Scenario: TC-002_DOG_Positive: Add Dog using valid user data for valid dog data
Given Check if FB user created
And service method is post
And the service url is: Login_service
And add to the header Content-Type with value application/json
When we set Body with {
  "loginProvider": "FB",
  "loginProviderId": "1675940472725867",
  "password": "",
   "loginProviderToken": "generated_access_token"
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
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    },
                    {
                    "name" : "custom Name"
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




Scenario: TC-002_DOG_Positive: Add Dog using "mix" as "false"  and Only Id1 is entered
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




Scenario: TC-005_DOG_Positive: Add Dog using "mix" as "True" and only Id1 is provided
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




Scenario: TC-006_DOG_Positive: Add Dog using "mix" as "True" and only Id1 and Id2 are provided
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



Scenario: TC-007_DOG_Positive: Add Dog using "mix" as "True" and only Id1 , Id2 and name are provided
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
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    },
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


Scenario:TC-008_DOG_Positive: Add Dog using "mix" as "true" and name provided 
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
    
    
Scenario:TC-009_DOG_Positive: Add Dog using "mix" as "false" and name provided 
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




Scenario: TC-010_DOG_Positive: Add Dog using genser as F
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "f",
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



Scenario: TC-011_DOG_Positive: Add Dog using neutered as true
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


Scenario: TC-012_DOG_Positive: Add Dog using age as 1
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
    "age" : 1,
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



Scenario: TC-013_DOG_Positive: Add Dog using age as 25
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



Scenario: TC-014_DOG_Positive: Add Dog using age as 50
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

Scenario: TC-017_DOG_Positive: Add Dog using age as 5.1
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



Scenario: TC-019_DOG_Positive: Add Dog description with long text 
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
    "description" : "My dog Pucy My dog PucyMy dog Pucy My dog Pucy My dog Pucy My dog Pucy My dog Pucy My dog Pucy",
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


Scenario: TC-020_DOG_Positive: Add Dog description with short text 
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

Scenario: TC-021_DOG_Positive: Add Dog dateOfBirth with correct format yyyy-mm-dd
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




Scenario: TC-022_DOG_Positive: Add Dog dateOfBirth with correct format yyyy-mm-dd curent date
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





Scenario: TC-024_DOG_Positive: Add Dog using weight samll 0.5
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
                    },
                    {
                    "name" : ""
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2016-07-22",
    "weight" :0.5,
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




Scenario: TC-025_DOG_Positive: Add Dog using weight large 500
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





Scenario: TC-026_DOG_Positive: Add Dog using eyeColor known colcor
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




Scenario: TC-027_DOG_Positive: Add Dog using eyeColor unknown colcor
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





Scenario: TC-028_DOG_Positive: Add Dog using weightClass unknown
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


Scenario: TC-029_DOG_Positive: Add Dog using weightClass known
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


Scenario: TC-030_DOG_Positive: Add Dog using akcRegistrationNo known
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


Scenario: TC-031_DOG_Positive: Add Dog using akcRegistrationNo as NA
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

