pragma solidity ^0.8.0;
contract Caller {

  fallback() external payable {
    callFallback();
  }
  function callFallback() public pure {
    selfdestruct(msg.sender);
  }
}
