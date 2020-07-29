pragma solidity 0.5.1;

contract MyContract {
    Person[] public people;
    
    uint256 public peopleCount;

    struct Person {
        string _firstName;
        string _lastName;
    }
    
    function addPerson(string memory _firstName, string memory _lastName) public {
        peopleCount +=1;
        people.push(Person(_firstName, _lastName));
    }
}
