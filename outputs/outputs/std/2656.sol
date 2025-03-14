pragma solidity ^0.8.0;
contract Mutate_2 {
  int32[12] a;
  function mutationfunc() public {
    a[0] = -64;
    a[1] = int32(-127);
    a[2] = 128;
    a[3] = int32(255);
    a[5] = 64;
    a[6] = 128;
    a[7] = 0;
  }
}
contract Mutate_3 {
  uint[12] a;
  function mutationfunc() public {
    a[0] = 1;
    a[1] = 4;
    a[2] = 5;
    a[3] = 6;
    a[4] = 7;
    a[5] = 8;
    a[6] = 0;
  }
}
