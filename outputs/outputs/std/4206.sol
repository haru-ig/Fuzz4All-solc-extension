pragma solidity ^0.8.0;
contract ModifiedArray{
  uint public constant SIZE = 10;
  uint memory z;
  mapping (uint => uint) public array1;
  constructor() public { array1[1] = 1; }
  function Modify(
    uint[SIZE] memory x,
    uint newValue,
    uint y
  ) public pure {
    x[y] *= newValue;
    array1[y] += newValue;
  }
}
