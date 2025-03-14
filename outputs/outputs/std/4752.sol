pragma solidity ^0.8.0;
contract F {
  function f() public {
    bool[0] memory x=new bool[](1);
    bool[] memory y=new bool[](1);
    x[0]=true;
    x[1]=false;
  }
}
