pragma solidity ^0.8.0;
contract Test {
  function test1(uint256 param) public pure {
    (uint256 r, ) = add(param, 1.0);
    assert(r == param + constant1);
  }
}
