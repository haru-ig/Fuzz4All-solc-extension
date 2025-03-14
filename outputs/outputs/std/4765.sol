pragma solidity ^0.8.0;
contract F {
  uint[] memory q;
  function f() public {
    uint[] memory x=new uint[](1);
    x[0]=6;
    q=x;
  }
}
