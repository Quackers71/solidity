pragma solidity 0.5.1;

contract ERC20Token {
    string public name;
    mapping(address => uint256) public balances;
    
    function mint() public {
        balances[tx.origin] ++;
    }
}

contract MyContract {
    address payable wallet;
    address public token;

    constructor(address payable _wallet, address _token) public {
        wallet = _wallet;
        token = _token;
    }
    
    function fallback() external payable {
        buyToken();
    }
    
    function buyToken() public payable {
        ERC20Token _token = ERC20Token(address(token)).mint();
        _token mint();
        wallet.transfer(msg.value);
    }
}

/* Deploy the ERC20Token then from the Transaction log copy the 'contract address'
   Now use the "Public Key of 2nd Account","contract address" i.e. "0x73f8b6F8E41693fd554AF244078844f450eb6F2c","0xc37625ef0e6bede7725c226b99a15ea86c4ac67f"
   to Deploy MyContract11 then on the MyContract > click 'BuyToken'
   Now copy the 2nd Account address and paste into the ERC20Token balances and press 'balances' you should see 1 increment
*/
