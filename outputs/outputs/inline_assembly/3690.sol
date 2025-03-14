pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
  function changeTheGeneCount(uint256 _g) public returns (uint256 _change) {
    g = _g + 125;
    _change =  g + 250;
  }
}
