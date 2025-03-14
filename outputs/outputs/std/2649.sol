pragma solidity ^0.8.0;
contract Mutate {
  int32[] a;
  function mutationfunc() public {
    a[0] = -64;
    a[1] = int32(-127);
    a[2] = 128;
    a[3] = int32(255);
    a[5] = 64;
    a[6] = 128;
  }
}
