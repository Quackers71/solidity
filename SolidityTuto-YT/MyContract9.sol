pragma solidity 0.5.1;

contract MyContract {
    
    mapping(address => uint256) public balances;
    address payable wallet;
    
    constructor(address payable _wallet) public {
        wallet = _wallet;
    }
    
    function buyToken() public payable {
        // buy a Token
        balances[msg.sender] += 1;

        // send ether to the wallet
        wallet.transfer(msg.value);
        
    }
}
