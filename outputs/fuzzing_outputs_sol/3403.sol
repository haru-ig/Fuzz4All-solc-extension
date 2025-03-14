pragma solidity ^0.8.0;
contract B {
  function f() public pure returns (bool) {
    return _();
  }
  function _() pure internal { return (uint256(block.number) % 2) == 0; }
}
