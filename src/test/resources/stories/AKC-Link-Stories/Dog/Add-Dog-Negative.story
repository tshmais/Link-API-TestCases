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

Scenario: TC-001_DOG_Negative: Add dog using empty data for name
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "",
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
    "dateOfBirth" : "2013-03-07",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
    
Then the service response should be: 409

Scenario: TC-002_DOG_Negative: Add dog using empty data for gender

Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "dds",
    "gender" : "",
    "neutered" : false,
    "age" : 4,
    "mix": false,
    "breeds" : [
                    {
                    "name" : "test"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2013-03-07",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201


Scenario: TC-003_DOG_Negative: Add dog using empty data for neutered
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "dds",
    "gender" : "F",
    "neutered" : "",
    "age" : 4,
    "mix": false,
    "breeds" : [
                     {
                    "id" : "1"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2013-03-07",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201

Scenario: TC-004_DOG_Negative: Add dog using empty data for age
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "dds",
    "gender" : "F",
    "neutered" : true,
    "age" : "",
    "mix": false,
    "breeds" : [
                     {
                    "id" : "1"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2013-03-07",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 409

Scenario: TC-005_DOG_Negative: Add dog using empty data for mix
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "dds",
    "gender" : "F",
    "neutered" : true,
    "age" : 5,
    "mix": "",
    "breeds" : [
                    {
                    "name" : "test"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2013-03-07",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
    
Then the service response should be: 409


Scenario: TC-006_DOG_Negative: Add mixbreeds dog using empty breeds IDs
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
                    "id" : ""
                    },
                    {
                    "id" : ""
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2013-03-07",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
    
Then the service response should be: 201


Scenario: TC-007_DOG_Negative: Add mixbreeds dog by providing breedId2 only

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
                    "id" : ""
                    },
                    {
                    "id" : "2"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2013-03-07",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
    
Then the service response should be: 409


Scenario: TC-008_DOG_Negative: Add dog using empty data for eyeColor

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
    "dateOfBirth" : "2013-03-07",
    "weight" : 8.9,
    "eyeColor" : "",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
    
Then the service response should be: 201

Scenario: TC-009_DOG_Negative: Add dog using empty data for weightClass
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
    "dateOfBirth" : "2013-03-07",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "",
    "akcRegistrationNo" : "ABC00123"
}
    
Then the service response should be: 201


Scenario: TC-010_DOG_Negative: Add dog using empty data for akcRegistrationNo

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
    "akcRegistrationNo" : ""
}
    
Then the service response should be: 201




Scenario: TC-011_DOG_Negative: Add dog using Special Characters
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : " t T * ",
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
    "description" : "My dog Pucy ךכלםמ נסעפ",
    "dateOfBirth" : "2013-03-07",
    "weight" : 8.9,
    "eyeColor" : "BROWN #",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201

Scenario: TC-012_DOG_Negative: Add dog uses incorrect gender type
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "S",
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
    "dateOfBirth" : "2013-03-07",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 409


Scenario: TC-013_DOG_Negative: Add dog using incorrect neutered and mix value

Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "M",
    "neutered" : "ss",
    "age" : 4,
    "mix": "SS",
    "breeds" : [
                    {
                    "id" : "1"
                    },
                    {
                    "id" : "2"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2013-03-07",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 400


Scenario: TC-014_DOG_Negative: Add dog using age of Zero
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
    "age" : "",
    "mix": true,
    "breeds" : [
                    {
                    "id" : "1"
                    }
                    
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2013-03-07",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}

Then the service response should be: 409


Scenario: TC-015_DOG_Negative: Add dog using Special Characters as age 
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "gender" : "^M",
    "neutered" : false,
    "age" : "",
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
    "dateOfBirth" : "2013-03-07",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 409


Scenario: TC-016_DOG_Negative: Add mixedbrees dog using SQL Injection as incorrect breed ID
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
    "age" : "",
    "mix": true,
    "breeds" : [
                    {
                    "id" : "select * from breed;"
                    }
                    
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2013-03-07",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}

Then the service response should be: 400


Scenario: TC-017_DOG_Negative: Add mixedbrees dog using invalid data for the second breed Id

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
                    "id" : "a"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2013-03-07",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 400

Scenario: TC-018_DOG_Negative: Add Dog using invalid data for description
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
                    }
                ],
    "description" : "(  )",
    "dateOfBirth" : "2013-03-07",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 400





Scenario: TC-019_DOG_Negative: Add Dog using invalid data for dateOfBirth

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
    "mix": false,
    "breeds" : [
                    {
                    "id" : "1"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "0000-00-00",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 400



Scenario: TC-020_DOG_Negative: Add Dog using invalid data for dateOfBirth as 2016-02-30
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
    "mix": false,
    "breeds" : [
                    {
                    "id" : "1"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2016-02-30",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
|-- will chang DOB to "dateOfBirth": "2016-03-01"



Scenario: TC-021_DOG_Negative: Add Dog using invalid data format for dateOfBirth
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
    "mix": false,
    "breeds" : [
                    {
                    "id" : "1"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2016/02/03",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 400

Scenario: TC-022_DOG_Negative: Add Dog using invalid data type for weight,eyeColor, weightClass and akcRegistrationNo
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
    "dateOfBirth" : "2013-03-07",
    "weight" : "T",
    "eyeColor" : "1",
    "weightClass" : "*",
    "akcRegistrationNo" : "*"
}
Then the service response should be: 400


Scenario: TC-023_DOG_Negative: Add Dog using Future date
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 	{
	    "name" : "Pucy",
	    "gender" : "M",
	    "neutered" : true,
	    "age" : 4,
	    "mix": false,
	    "breeds" : [
	                    {
	                    "id" : "1"
	                    }
	                ],
	    "description" : "My dog Pucy",
	    "dateOfBirth" : "2018-02-03",
	    "weight" : "2",
	    "eyeColor" : ")",
	    "weightClass" : "*",
	    "akcRegistrationNo" : "$"
	}
Then the service response should be: 409

Scenario: TC-024_DOG_Negative: Add Dog using duplicate breedsID selections
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 	{
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
                    "id" : "1"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2013-03-07",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 409


Scenario: TC-025_DOG_Negative: Add mixedbreeds Dog using breeds ID and custom breeds name
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 	{
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
                    "name" : "test"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2013-03-07",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}

Then the service response should be: 201

Scenario: TC-026_DOG_Negative: Add mixedbreeds Dog using breeds ID 0
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 	{
    "name" : "Pucy",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "0"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2013-03-07",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}

Then the service response should be: 409


Scenario: TC-027_DOG_Negative: Add mixedbreeds Dog using breeds ID 370
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 	{
    "name" : "Pucy",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "mix": true,
    "breeds" : [
                    {
                    "id" : "370"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2013-03-07",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}

Then the service response should be: 409

Scenario: TC-028_DOG_Negative: Add Dog using minus weight
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 	{
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
                    "name" : "test"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2013-03-07",
    "weight" : -8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}

Then the service response should be: 409


Scenario: TC-029_DOG_Negative: Add Dog for Empty user ID
Given Create new user
And Login with valid credentials
And service method is post
When URL equal: Post_Dog_to_User_service with Empty_User_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 	{
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
                    "name" : "test"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2013-03-07",
    "weight" : -8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}

Then the service response should be: 405


Scenario: TC-030_DOG_Negative: Add Dog for Not Existing User ID
Given Create new user
And Login with valid credentials
And service method is post
When URL equal: Post_Dog_to_User_service with Not_Exist_User_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 	{
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
                    "name" : "test"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2013-03-07",
    "weight" : -8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}

Then the service response should be: 404

Scenario: TC-031_DOG_Negative: Add Dog for Existing User ID
Given Create new user
And Login with valid credentials
And service method is post
When URL equal: Post_Dog_to_User_service with Existing_User_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 	{
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
                    "name" : "test"
                    }
                ],
    "description" : "My dog Pucy",
    "dateOfBirth" : "2013-03-07",
    "weight" : -8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}

Then the service response should be: 403
