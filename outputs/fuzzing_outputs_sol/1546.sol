pragma solidity ^0.8.0;
contract MutatorExample {
  function fallback() external { revert(); }
}
