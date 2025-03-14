pragma solidity ^0.8.0;
contract Timing1 {
uint a = 100;

uint[] dynArr;

uint b = 0;
uint c = 0;

uint[3] arr;

uint public val;

  function f() public {
    dynArr[2] = 500;
    arr = [150];
    a = 5000;
    b = 10;
    c = 11;
    arr = [150, 250];
  }

  function aFunc() public view {
    return a;
  }

 function bFunc() public view {
    return b;
  }


}
