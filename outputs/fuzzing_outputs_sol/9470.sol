pragma solidity ^0.8.0;
contract ContractWithFallback12 {
  function modify(uint x) public {
    fallback(modify(x + 1));
  }
}
