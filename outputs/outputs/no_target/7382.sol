pragma solidity ^0.8.0;
contract BugsABICoder6{
  uint128 public variable;
  function returnExternalUint128() public view returns(uint128){
    return variable;
  }
}
