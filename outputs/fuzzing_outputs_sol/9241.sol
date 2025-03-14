pragma solidity ^0.8.0;
contract DelegateCalls {
  address public contractAddr;
  constructor () {
    contractAddr = msg.sender;
  }


  function delegateTo(address _delegateeAddr) public {
    require(address(msg.sender) == address(0), "Caller");
    contractAddr = _delegateeAddr;
  }
  receive() external payable { }
 }
