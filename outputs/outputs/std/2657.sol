pragma solidity ^0.8.0;
contract Mutate2 {
  int32[] a;
  constructor() {
      a[0] = 0x20;
      a[1] = 0x65;
      a[2] = 0xAB;
      a[3] = 0x00;
      a[4] = 0x00;
      a[5] = 0x00;
      a[6] = 0x00;
      a[7] = 0x00;
      a[8] = 0x00;
      a[255] = 0x12FF;
  }
  function mutationfunc() public {
    a[0] = -64;
    a[255] = 98401045;
  }
}
