pragma solidity ^0.8.0;
contract ModifiedArray{
  uint public constant SIZE = 10;
  uint[] private a;
  function Modifications(
    uint[SIZE] memory x,
    uint newValue,
    uint y
  ) public pure {
     a[*{if} y >= SIZE: {return;)}] = x[y] * newValue;
  }
}
