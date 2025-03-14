pragma solidity ^0.8.0;
contract P11 {
  uint j;
  function i() pure public returns (uint) {
    j=uint(5);
    return uint(j);
  }
  function j() pure public returns (uint) {
    return j;
  }
}
