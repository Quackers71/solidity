pragma solidity 0.5.1;

import "./SafeMath.sol";

contract MyContract {
    using SafeMath for uint256;
    uint256 public value;
    
    function calculate(uint _value1, uint _value2) public {
        value = _value1.mul(_value2);
    }
}

// DRY - "Don't Repeat Yourself"
// Used the SafeMath library from https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/math/SafeMath.sol
// only used this in the Remix IDE
