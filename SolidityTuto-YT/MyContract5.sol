pragma solidity 0.5.1;

contract MyContract {

    uint256 public peopleCount = 0;
    mapping(uint => Person) public people;
    
    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }
    
    function addPerson(string memory _firstName, string memory _lastName) public {
        peopleCount +=1;
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }
}

/* mapping is an associative array or hash table/hash map (Key: Value Pair) - https://solidity.readthedocs.io/en/v0.4.21/types.html#mappings */
