pragma solidity ^0.8.0;
contract Addressable
{
  address payable public addr;
}
contract ContractWithAddress
{
  function newContractInstance() public payable payable {
    theAddr = msg.sender;
  }
  address theAddr;
  Addressable theAddrable;
}
```

<br/>
