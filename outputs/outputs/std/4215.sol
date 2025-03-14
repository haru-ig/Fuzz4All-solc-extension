pragma solidity ^0.8.0;
contract V2Array{
  uint public constant SIZE = 10;
  uint256 public array[SIZE];
  function Modified(
    uint256[SIZE] memory a,
    uint256 newValue,
    uint y
  ) public pure returns (uint256) {
    uint256 val = a[y] * newValue;
    return val;
  }
}
