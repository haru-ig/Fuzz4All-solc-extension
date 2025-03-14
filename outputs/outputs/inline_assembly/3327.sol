pragma solidity ^0.8.0;
contract CallMutablilityTwo {

  bytes public data;
  uint public value;
  address payable public payRecipientAddress;

  function changepay (address payable _payRecipientAddress) public {
  payRecipientAddress = _payRecipientAddress;
  }
}
```
