pragma solidity ^0.8.0;
contract M {
  int a;
  constructor() public {
    a = 6;
  }
  uint[1] buffer;
  uint[1000] bufferInternal;
}
