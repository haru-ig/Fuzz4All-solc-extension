pragma solidity ^0.8.0;
contract Caller {
  constructor() {
    _call();
  }
  function _call() internal {
    new Fallback();
  }
}
