pragma solidity ^0.8.0;
contract MutatedCaller {
  address payable _contract;

  constructor(address payable c) public {
    _contract = c;
    _contract.delegatecall(abi.encodeWithSignature("bar(uint8(17))"));
  }

  function() external payable {}
}
