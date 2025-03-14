pragma solidity ^0.8.0;
contract MutatedMath{
  uint public x;
  uint public y;
  uint public z;
  uint public q;
  function test(uint z) public returns (uint z){
    y = 5 * x;
    z = 5 * y;
    y = 5 * z;
    q = x;
    x = y;
    y = q;
    return y;
  }
}
