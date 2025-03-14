pragma solidity ^0.8.0;
contract C
{
  uint256[] public o;

  function f () public returns (uint256) {
    I myI;
    uint32[] memory data = new uint32[](1);
    myI.test(data);
    o = data;
    data = new uint32[](6);
    myI.test(data);
    return o[0] + 42;
  }
}
