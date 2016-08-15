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

Scenario: TC-001_DOG_Negative: Verify Add Dog service using empty data  for name

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




Scenario: TC-003_DOG_Negative: Verify Add Dog service using empty data  for gender

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
                    "name" : "Custom Breed"
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
|--And json response should equal:Negative_TC-002_Post_Dog_to_User_service


Scenario: TC-004_DOG_Negative: Verify Add Dog service using empty data  for neutered

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
                    "name" : "Custom Breed"
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
|--And json response should equal:Negative_TC-002_Post_Dog_to_User_service


Scenario: TC-005_DOG_Negative: Verify Add Dog service using empty data  for age

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
                    "name" : "Custom Breed"
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
And json response should equal:Negative_TC-005_Post_Dog_to_User_service


Scenario: TC-006_DOG_Negative: Verify Add Dog service using empty data  for mix

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
                    "name" : "Custom Breed"
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
|--And json response should equal:Negative_TC-006_Post_Dog_to_User_service


Scenario: TC-007_DOG_Negative: Verify Add Dog service when breedSource is "listed Breed" and breedId1, breedId2 are empty


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
    
Then the service response should be: 409
|--And json response should equal:Negative_TC-006_Post_Dog_to_User_service


Scenario: TC-008_DOG_Negative: Verify Add Dog service when breedSource is "listed Breed" and only breedId2 is provided

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
|--And json response should equal:Negative_TC-006_Post_Dog_to_User_service


Scenario: TC-013_DOG_Negative: Verify Add a Dog service using empty data  for eyeColor

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
|--And json response should equal:Negative_TC-006_Post_Dog_to_User_service


Scenario: TC-014_DOG_Negative: Verify Add a Dog service using empty data  for weightClass

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
|--And json response should equal:Negative_TC-006_Post_Dog_to_User_service


Scenario: TC-015_DOG_Negative: Verify Add a Dog service using empty data  for akcRegistrationNo

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
|--And json response should equal:Negative_TC-006_Post_Dog_to_User_service


Scenario: TC-016_DOG_Negative: Verify Add a Dog service using  invalid data  for name

Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : " ",
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
|--And json response should equal:Negative_TC-006_Post_Dog_to_User_service


Scenario: TC-018_DOG_Negative: Verify Add Dog service using invalid data  for gender

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
|--And json response should equal:Negative_TC-0018_Post_Dog_to_User_service


Scenario: TC-019_DOG_Negative: Verify Add Dog service using invalid data  for neutered

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
Then the service response should be: 400


Scenario: TC-020_DOG_Negative: Verify Add Dog service using invalid data  for age

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
    "age" : "s",
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
Then the service response should be: 400





Scenario: TC-022_DOG_Negative: Verify Add a Dog service using invalid data  for breedId1

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
                    "id" : "Z"
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


Scenario: TC-023_DOG_Negative: Verify Add a Dog service using invalid data  for breedId2

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
                    "id" : "2"
                    },
                    {
                    "id" : "Z"
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



Scenario: TC-025_DOG_Negative: Verify Add Dog service using invalid data  for description

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
    "description" : "@@",
    "dateOfBirth" : "2013-03-07",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
|--And json response should equal:Negative_TC-0025_Post_Dog_to_User_service


Scenario: TC-026_DOG_Negative: Verify Add Dog service using invalid data  for dateOfBirth

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


Scenario: TC-027_DOG_Negative: Verify Add Dog service using invalid data  for weight

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
    "weight" : "@",
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 400


Scenario: TC-028_DOG_Negative: Verify Add a Dog service using Future date for dateOfBirth

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
    "dateOfBirth" : "2017-03-07",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 409


Scenario: TC-029_DOG_Negative: Verify Add a Dog service using invalid data  for weightClass

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
    "weightClass" : "@@",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201


Scenario: TC-030_DOG_Negative: Verify Add a Dog service using invalid data  for akcRegistrationNo

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
    "akcRegistrationNo" : "@@"
}
Then the service response should be: 201


Scenario: TC-031_DOG_Negative: Verify Add Dog service using empty data  for all

Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "",
    "gender" : "",
    "neutered" : "",
    "age" : "",
    "mix": "",
    "breeds" : [
                    {
                    "id" : ""
                    },
                    {
                    "id" : ""
                    }
                ],
    "description" : "",
    "dateOfBirth" : "",
    "weight" : "",
    "eyeColor" : "",
    "weightClass" : "",
    "akcRegistrationNo" : ""
}
Then the service response should be: 409
|--And json response should equal:Negative_TC-0031_Post_Dog_to_User_service






Scenario: TC-033_DOG_Negative: Verify Add Dog service using  invalid data (-1) for age

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
    "age" : -4,
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
Then the service response should be: 409
|--And json response should equal:Negative_TC-0033_Post_Dog_to_User_service


Scenario: TC-034_DOG_Negative: Verify Add Dog service using invalid data  (51) for age

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
    "age" : 51,
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
Then the service response should be: 409
|--And json response should equal:Negative_TC-0034_Post_Dog_to_User_service


Scenario: TC-035_DOG_Nigative: Verify Add Dog service using "breedSource" as Listed  Breed"  and Both breedId1 and breedId2 are provided
 
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
Then the service response should be: 409

Scenario: TC-036_DOG_Nigative: Verify Add Dog service using age as 5,1
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
    "age" : "5,1",
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
Then the service response should be: 400

