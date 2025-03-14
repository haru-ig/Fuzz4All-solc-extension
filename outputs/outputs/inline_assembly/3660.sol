pragma solidity ^0.8.0;
contract MutatesUsingYulWithoutSemanticsTwo{
  uint256 private g;
  constructor(uint256 _g) {
    g = _g;
  }
  function changeGeneCount() public {
    g++;
  }
  function getGeneCount() public view returns (uint256) {
    return g;
  }
}
