pragma solidity ^0.8.0;
contract Mutate {
  int32[] a;
  function mutationfunc() public {
    a = [int32(-127), int32(-32), 1, -64, int32(255)];
    a[1] = 128;
    a = [4, 5, 6];
  }
}
