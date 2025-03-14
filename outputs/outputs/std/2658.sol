pragma solidity ^0.8.0;
contract Mutate {
  int32[2] a;
  function mutationfunc() public {
    a[0] = 2;
    a[1] = -5;
  }
}
