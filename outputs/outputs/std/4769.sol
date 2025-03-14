pragma solidity ^0.8.0;
contract F {
  int[] public p;
  function f() public {
    int[] memory x=new int[](1);
    x[0]=3;
    p=x;
  }
}
