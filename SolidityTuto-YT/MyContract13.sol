pragma solidity 0.5.1;

library Math {
    function divide(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0);
        uint256 c = a / b;
        return c;
    }
}

contract MyContract {
    uint256 public value;
    
    function calculate(uint _value1, uint _value2) public {
        value = Math.divide(_value1, _value2);
    }
}

// DRY - "Don't Repeat Yourself"
// defining a library - importing a Math function from a library in solidity
// Deploy via MyContract as the library Math knows it depends on the MyContract function
// Now calculate [144, 12] == 0: uint256: 12
