pragma solidity ^0.8.0;
contract Mutations{
  uint256 g;
  function changeGeneCount(uint256 _g) public {
    g = _g;
  }
  function changeGeneCount(uint256 _a, uint256 _b) public {
    revert("Not allowed");
  }
  constructor() {
    g = constantValue;
  }


}
