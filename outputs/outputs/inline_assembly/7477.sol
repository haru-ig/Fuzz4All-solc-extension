pragma solidity ^0.8.0;



uint public totalSupply;


mapping (address => uint) public balances;



fallback() external payable {
   totalSupply += balances[msg.sender] + msg.value;
   balances[msg.sender] += msg.value;
}
```
