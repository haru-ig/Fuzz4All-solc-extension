pragma solidity ^0.8.0;


contract Mutate {
  int[] a;
  function mutationfunc() public {
    a.length = 2;
    a[1] = 2;
  }
}
