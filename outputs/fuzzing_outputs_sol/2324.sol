pragma solidity ^0.8.0;
contract Caller {
  address payable self;
  function() external payable {
    self.sendValue(msg.value);
  }
}
