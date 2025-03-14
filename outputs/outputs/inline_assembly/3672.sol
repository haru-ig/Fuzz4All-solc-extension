pragma solidity ^0.8.0;
contract ReturnsAnotherFunction{
  uint256 constant constantValue = 125;
  uint256 private g;
  function changeFirstGeneCount(uint256 _g) public {
    g = _g + constantValue;
  }
  function getFirstGeneCount(uint256 _g1) public view returns (uint256) {
    return g + constantValue;
  }
  function getSecondGeneCount() public returns (uint256) {
    return g;
  }
}
