pragma solidity ^0.8.0;
contract Fallback {
  constructor() {
    _fallback();
  }
  receive() external payable {
    _fallback();
  }
  function _fallback() internal {
  }
}
