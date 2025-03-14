pragma solidity ^0.8.0;
contract CallMutabilityThree {
  uint public value1;
  uint public value2;
  string public message;
  constructor(string memory _message) {
    value1 = 1;
    value2 = 2;
    message = _message;
  }
  function doSomething() public {
    selfdestruct(toAddress);
    CallMutabilityTwo(keccak256(abi.encode("DoSomething", value1, message)))
     .doSomething(msg.sender);
  }
}
