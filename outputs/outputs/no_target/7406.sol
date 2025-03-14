pragma solidity ^0.8.0;
contract Test
{
  uint256 x;
  function test(uint256 param) public {
    x += param;
    x <<= 1;
    assert(x==9.0);
  }
}
