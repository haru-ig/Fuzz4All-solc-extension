pragma solidity ^0.8.0;
contract ModifiedArray{
  uint public constant SIZE = 10;
  uint[] private test = [123423, 123343];

  function Modify(
    uint[SIZE] memory x, uint index,
    uint newValue
  ) public pure {
     uint tmp = x[index];
     x[index] *= newValue.sub(tmp);
  }
}
