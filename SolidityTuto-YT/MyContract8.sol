pragma solidity 0.5.1;

contract MyContract {

    uint256 public peopleCount = 0;
    mapping(uint => Person) public people;
    
    uint256 openingTime = 1595925897;
    
    modifier onlyWhileOpen() {
        require(block.timestamp >= openingTime);
        _;
    }

    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }
    
    function addPerson(             /* function */
        string memory _firstName,   /* args */
        string memory _lastName
    ) 
        public 
        onlyWhileOpen                   /* modifier */
    {
        incrementCount();           /* executed function */
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }
    
    function incrementCount() internal {
        peopleCount +=1;        
    }
}

/* mapping is an associative array or hash table/hash map (Key: Value Pair) - https://solidity.readthedocs.io/en/v0.4.21/types.html#mappings */

/* internal function - internal is a modifier */

/* custom modifier - only the owner of the smart contract can addPerson - using global keyword msg */

/* some code formatting with comments */

/* solidity uses epoch time - https://www.epochconverter.com/ */
