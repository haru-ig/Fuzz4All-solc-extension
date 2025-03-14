pragma solidity ^0.8.0;
contract G {
  uint[] public p;
  function g() public {
    uint[] memory x=new uint[](1);
    x[0]=6;
    p=x;
  }
}
