pragma solidity ^0.8.0;
contract MutatesUsingYulWithoutSemantics{
  uint256 private g;
  constructor(uint256 _g) {
    g = _g;
  }
  function changeGeneCount(uint256 _g) public {
    g = _g;
  }
  function getGeneCount() public view returns (uint256) {
    return g;
  }
}
