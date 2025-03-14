pragma solidity ^0.8.0;
contract BugsABICoder5{
  uint16 public variable;
  function returnExternalUint16() public view returns(uint16){
    return variable;
  }
}
