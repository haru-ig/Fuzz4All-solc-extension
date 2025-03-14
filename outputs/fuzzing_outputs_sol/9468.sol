pragma solidity ^0.8.0;
contract ContractWithFallback12 {
  function modify(uint x) public view returns (uint) {
  }
  event Fallback(uint x);
  fallback () payable public {
    emit Fallback(x);
  }
}
