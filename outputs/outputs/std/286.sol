pragma solidity ^0.8.0;
contract Mutator2 {
  uint256 trueValue;
  constructor () {
    trueValue = 255;
  }


  modifier onlyTrue () {
  if (block.timestamp > 0) return true;
  revert("");
  }
  bool public b;

  function f_1(address c) public onlyTrue external {
    c = 0xe391be487d6bd5d3745f0c6642442220137547aa;
    c = c^0x5339F4C69bA51D3b18d9964cB7a16A448407a55A6;
  }
}
