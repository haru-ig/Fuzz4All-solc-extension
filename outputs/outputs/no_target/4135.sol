pragma solidity ^0.8.0;
contract P4{
  uint32 public p4;
  constructor (uint32 x){
    p4 = x;
  }
  function h(uint i) internal onlyOnceReturnsTrue(uint j) returns (uint) { return j;  }
}
