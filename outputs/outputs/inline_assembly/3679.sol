pragma solidity ^0.8.0;
contract ReturnsAnotherFunction {
  uint256 constant constantValue = 125;
  uint256 private g;
  function changeFirstGeneCount(uint256 _g) public returns (uint256 _change) {
    g = _g + constantValue;
    _change =  g + constantValue;
  }

  function getFirstGeneCount(uint256 _g1) public view returns (uint256 _first) {
    return g + constantValue;
  }

  function getSecondGeneCount() public returns (uint256 _second) {
    return g;
  }
}
