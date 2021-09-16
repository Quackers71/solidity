// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 < 0.9.0;

contract SimpleStorage {
    
    // this will get intialized to 0!
    uint256 favoriteNumber;
    bool favoriteBool;
    
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    
    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;
    
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }
    
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

/*  
    People public person = People({favouriteNumber: 2, name: "Q"});

    bool favouriteBool = false;
    string favouriteString = "String";
    int256 favouriteInt = 5;
    address favouriteAddress = 0xc402a208F82D4e527090B64cD8e4B8aAf4653219;
    bytes32 favouriteBytes = "cat";
    */