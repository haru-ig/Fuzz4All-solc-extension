pragma solidity ^0.8.0;
library B {
  bytes32 public constant NULL_HASH;
  modifier onlyNull {
    require(address(this) == NULL_HASH, "");
    _;
  }
}
contract C {
  using B for bytes32;
  modifier onlyNull() {
    require(address(this) == NULL_HASH, "");
    _;
  }
}
