pragma solidity ^0.8.0;
contract OldArray{
  uint public constant SIZE = 10;
  uint[4] private test = [123423, 123343, 212313, 123133];
  function OldArray(
    uint[SIZE] memory x,
    uint newValue,
    uint y
  ) public pure {
      x[y] *= newValue;
  }
}
