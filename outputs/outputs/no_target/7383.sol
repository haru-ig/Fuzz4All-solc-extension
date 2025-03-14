pragma solidity ^0.8.0;
contract BugsABICoder6{
  uint16 public variable;
  function returnExternalUint16() public view returns(uint16){
    variable -= 2;
    return variable;
  }
}
