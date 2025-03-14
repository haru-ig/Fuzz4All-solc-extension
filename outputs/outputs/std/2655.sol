pragma solidity ^0.8.0;
contract Mutate {
  int32[] a;
  function mutationfunc() public {
    a[0] = 64;
    a[1] = 0;
    a[2] = 128;
    a[3] = 0;
    a[5] = -1;
    a[6] = -2;
  }
}
