pragma solidity ^0.8.0;
contract BugsABICoder6 {
  uint256 public variable;
  function returnExternalUint16() public view returns(uint256){
    return variable;
  }
}
