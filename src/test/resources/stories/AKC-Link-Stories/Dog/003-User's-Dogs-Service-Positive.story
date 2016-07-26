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
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "mix": false,
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
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "mix": false,
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : ""
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
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "mix": false,
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
And I want to open a connection to MySQL DB
And Retrieve Json path $.id response
And I want to pull the data from the DB using TC-001_select_Dog query with response ID
And print the value







Scenario: TC-010_DOG_Positive: Verify Add Dog service using "breedSource" as Unlisted  Breed"  and only unListedBreedName is provided

Given Create new user
And Login with valid cridintials
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
                    "id" : ""
                    },
                    {
                    "id" : ""
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


Scenario: TC-017_DOG_Positive: Verify Add Dog service using 1 for Age

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "M",
    "neutered" : true,
    "age" : 1,
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
    "gender" : "M",
    "neutered" : true,
    "age" : 50,
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
    "gender" : "M",
    "neutered" : true,
    "age" : 25,
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
And I want to open a connection to MySQL DB
And Retrieve Json path $.id response
And I want to pull the data from the DB using TC-001_select_Dog query with response ID
And print the value
