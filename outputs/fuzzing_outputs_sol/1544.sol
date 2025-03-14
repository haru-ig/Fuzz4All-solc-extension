pragma solidity ^0.8.0;
contract NonMutatorExample {
  function fallback() external pure { revert(); }
}
