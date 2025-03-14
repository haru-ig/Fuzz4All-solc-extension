pragma solidity ^0.8.0;
contract Caller {
  function() external payable {
    require(msg.value > 0);
  }
  event Emitted(uint a);
}
