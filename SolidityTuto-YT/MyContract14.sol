pragma solidity 0.5.1;

import "./Math.sol";

contract MyContract {
    uint256 public value;
    
    function calculate(uint _value1, uint _value2) public {
        value = Math.divide(_value1, _value2);
    }
}

// DRY - "Don't Repeat Yourself"
// Placed the library in Math.sol file and used import "{location}"
// Deploy via MyContract as the library Math knows it depends on the MyContract function
// Now calculate [144, 12] == 0: uint256: 12