pragma solidity ^0.8.0;
contract Fallback {
  constructor() {
    _fallback();
  }
  function foo() public pure {}
  receive() external payable {}
  function add(uint x, uint y) public pure returns (uint z) {
    return z = x + y;
  }
  function _fallback() internal pure {
  }
}
