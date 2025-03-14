pragma solidity ^0.8.0;
contract ModifiedArray{
  uint public constant SIZE = 10;
  uint[2] private test = [123423, 123343];





  function Modify(
    uint[SIZE] memory x,
    uint newValue,
    uint y
  ) public pure {
      x[y] *= newValue;
  }
}
