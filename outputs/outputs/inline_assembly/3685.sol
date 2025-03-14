pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
  uint256 constant constantValue = 125;
  uint256 private g;
  function changeTheGeneCount(uint256 _g) public returns (uint256 _change) {
    g = _g + constantValue;
    _change =  g + constantValue;
  }
}
