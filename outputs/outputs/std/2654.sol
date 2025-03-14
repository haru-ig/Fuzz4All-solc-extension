pragma solidity ^0.8.0;
contract Mutate2 {
  int32[] a;
  function mutationfunc() public {
    a[4][0] = -64;
    a[4][1] = int32(-127);
    a[4][2] = 128;
    a[4][3] = int32(255);
    a[4][5] = 64;
    a[4][6] = 128;
  }
}
