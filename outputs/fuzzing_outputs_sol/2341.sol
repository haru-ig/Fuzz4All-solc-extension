pragma solidity ^0.8.0;
contract Fallbacks {
  fallback () external {
  }
  receive() external {}
}
contract MultipleFallbacks {
  function fallback () external {}
  receive() external {}
}
