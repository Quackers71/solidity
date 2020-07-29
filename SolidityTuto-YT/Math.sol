pragma solidity 0.5.1;

library Math {
    function divide(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0);
        uint256 c = a / b;
        return c;
    }
}

// defining a library - importing a Math function from a library in solidity
