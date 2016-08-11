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
Then the service response should be: 201




Scenario: TC-002_DOG_Positive: Verify Add Dog service using "mix" as "false"  and Only Id1 is entered
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




Scenario: TC-005_DOG_Positive: Verify Add Dog service using "mix" as "True" and only Id1 is provided
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




Scenario: TC-006_DOG_Positive: Verify Add Dog service using "mix" as "True" and only Id1 and Id2 are provided
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



Scenario: TC-007_DOG_Positive: Verify Add Dog service using "mix" as "True" and only Id1 , Id2 and name are provided
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


Scenario:TC-008_DOG_Positive: Verify Add Dog service using "mix" as "true" and name provided 
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
    
    
Scenario:TC-009_DOG_Positive: Verify Add Dog service using "mix" as "false" and name provided 
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




Scenario: TC-010_DOG_Positive: Verify Add Dog service using genser as F
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



Scenario: TC-011_DOG_Positive: Verify Add Dog service using neutered as true
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


Scenario: TC-012_DOG_Positive: Verify Add Dog service using age as 1
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



Scenario: TC-013_DOG_Positive: Verify Add Dog service using age as 25
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



Scenario: TC-014_DOG_Positive: Verify Add Dog service using age as 50
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
A

Scenario: TC-017_DOG_Positive: Verify Add Dog service using age as 5.1
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



Scenario: TC-019_DOG_Positive: Verify Add Dog service description with long text 
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
    "description" : "My dog Pucy My dog PucyMy dog Pucy My dog Pucy My dog Pucy My dog Pucy My dog Pucy My dog Pucy ",
    "dateOfBirth" : "2016-07-22",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201



Scenario: TC-020_DOG_Positive: Verify Add Dog service description with short text 
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


Scenario: TC-021_DOG_Positive: Verify Add Dog service dateOfBirth with correct format yyyy-mm-dd
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



Scenario: TC-022_DOG_Positive: Verify Add Dog service dateOfBirth with correct format yyyy-mm-dd curent date
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





Scenario: TC-024_DOG_Positive: Verify Add Dog service using weight samll 0.5
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




Scenario: TC-025_DOG_Positive: Verify Add Dog service using weight large 500
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
    "weight" :500,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}   
Then the service response should be: 201





Scenario: TC-026_DOG_Positive: Verify Add Dog service using eyeColor known colcor
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
    "weight" :500,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}   
Then the service response should be: 201




Scenario: TC-027_DOG_Positive: Verify Add Dog service using eyeColor unknown colcor
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
    "weight" :500,
    "eyeColor" : "cds",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}   
Then the service response should be: 201





Scenario: TC-028_DOG_Positive: Verify Add Dog service using weightClass unknown
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
    "weight" :500,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}   
Then the service response should be: 201


Scenario: TC-029_DOG_Positive: Verify Add Dog service using weightClass known
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
    "weight" :500,
    "eyeColor" : "BROWN",
    "weightClass" : "1",
    "akcRegistrationNo" : "ABC00123"
}   
Then the service response should be: 201


Scenario: TC-030_DOG_Positive: Verify Add Dog service using akcRegistrationNo known
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
    "weight" :500,
    "eyeColor" : "BROWN",
    "weightClass" : "1",
    "akcRegistrationNo" : "ABC00123"
}   
Then the service response should be: 201


Scenario: TC-031_DOG_Positive: Verify Add Dog service using akcRegistrationNo as NA
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
    "weight" :500,
    "eyeColor" : "BROWN",
    "weightClass" : "1",
    "akcRegistrationNo" : "NA"
}   
Then the service response should be: 201

