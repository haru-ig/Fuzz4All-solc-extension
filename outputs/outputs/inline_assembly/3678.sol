pragma solidity ^0.8.0;
contract ReturnsAnotherFunction{
  uint256 constant constantValue = 125;
  uint256 private g;
  function changeFirstGeneCount(uint256 g2) public {
    g = g2 + constantValue;
  }
  function getFirstGeneCount() public view returns (uint256) {
    return g + constantValue;
  }
  function getSecondGeneCount() public returns (uint256) {
    return g;
  }
}
