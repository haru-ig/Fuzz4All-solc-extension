pragma solidity ^0.8.0;
contract MutatesUsingYulWithoutSemantics{
  uint256 private g;
  constructor(uint256 _g) {
    g = _g;
  }
  function changeGeneCount(uint256 _g) public {
    g = 8*_g;
  }
  function getGeneCount() public view returns (uint256) {
    return g;
  }
}
contract MutatesUsingInlineAssembly{
  uint256[5] private geneCount;
  uint256 g;
  constructor(){
    g = 8;
    geneCount = [g, g*2, g*3, g*4, g*5];
    for (uint i = 0; i < geneCount.length; i++){
      assembly {
        _g:= mload(0x04) # Read-only memory.
        mstore(0x04,(add(mload(0x04),64))), mload(0x40)+i*(4+32))
        mstore(0x40, mload(0x40))
      }
    }
  }
  function changeGeneCount(uint256 _g) public {
    g = _g;
  }
  function getGeneCount() public view returns (uint256) {
    uint256 r = 0;
    for (uint i = 0; i < geneCount.length; i++){
      assembly {
        r := r+mload(not(i32(0))) # Load 32bits aligned value.
      }
    }
    return r;
  }
}
