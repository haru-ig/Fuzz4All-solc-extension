pragma solidity ^0.8.0;
contract OriginalArray{
  uint public constant SIZE = 10;
  uint[SIZE] private test;
  function Original(
    uint newValue,
    uint y
  ) public pure {
      test[y] *= newValue;
  }
}
