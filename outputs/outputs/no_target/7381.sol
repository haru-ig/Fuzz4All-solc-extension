pragma solidity ^0.8.0;
contract BugsABICoder5_2{
  uint16 public variable;
  function returnExternalUint16() public returns(uint16){
    return variable + 1;
  }
}
