pragma solidity ^0.8.0;
contract P12 {
  function i() pure public returns (uint160) {
    return (~(uint256(1)^uint256(2)^uint256(3)));
  }
}
