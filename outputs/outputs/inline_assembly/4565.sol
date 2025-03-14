pragma solidity ^0.8.0;
contract emulator5 {
  uint z;
  function test() public returns(uint) { uint x;
    for (; x < 10000000000000; x ++, z += x/x%2) {}
    return 0;
  }
}
