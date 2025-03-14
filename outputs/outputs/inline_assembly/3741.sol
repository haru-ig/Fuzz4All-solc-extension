pragma solidity ^0.8.0;
contract Simple2Optimized {
  constructor(){
    uint256 _h = constantValue;
  }
  function getH() view public returns (void) {
    uint256 _h = constantValue;
    _h++;
  }
  uint256 constant constantValue = 5;
}
