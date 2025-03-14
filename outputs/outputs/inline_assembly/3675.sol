pragma solidity ^0.8.0;
contract ReturnsAnotherFunction{
  uint256 constant constantValue = 125;
  uint256 private g;
  uint256 internal _g;
  function changeFirstGeneCount(uint256 _g) public {
    g = _g + constantValue;
    _g = _g;
  }
  function getFirstGeneCount(uint256 _g1) public view returns (uint256) {
    return g + constantValue;
  }
  function getSecondGeneCount() public view returns (uint256) {
    return _g;
  }
}
