pragma solidity ^0.8.0;



contract Caller {
  uint public balance = 0;


  function() external payable {
    balance += msg.value;
  }
}
