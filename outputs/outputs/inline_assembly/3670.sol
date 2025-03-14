pragma solidity ^0.8.0;
contract ReturnsAFunction{
  uint256 constant constantValue = 125;
  uint256 private g;
  constructor(){
    g= constantValue;
  }
  function changeGeneCount(uint256 _g) public {
    g = _g + constantValue;
  }
  function getGeneCount() public view returns (uint256) {
    return g;
  }
}
