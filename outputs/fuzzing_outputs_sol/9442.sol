pragma solidity ^0.8.0;
contract ContractWithFallback8 {
  function () public {
    revert("test");
  }
}
contract ContractWithFallback9 {
  function fallback() public pure {}
}
