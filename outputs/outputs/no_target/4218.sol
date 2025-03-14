pragma solidity ^0.8.0;
contract P12 {
  contract C is P12 {
    uint _ = 0;
    uint _;
    function i() pure public returns (uint) {
      return 1;
    }
  }
}
