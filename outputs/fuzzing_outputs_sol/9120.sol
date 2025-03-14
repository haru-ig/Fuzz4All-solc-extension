pragma solidity ^0.8.0;
contract ModifiesCaller {
  uint256 value;

  modifier only {
    value++;
    _;
    value--;
  }
  fallback() external payable only {}
}
