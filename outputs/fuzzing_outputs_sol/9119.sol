pragma solidity ^0.8.0;
contract FailsCaller {
  fallback() external payable {}
}
