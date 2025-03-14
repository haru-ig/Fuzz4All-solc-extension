pragma solidity ^0.8.0;
abstract contract CallContractWithFallbackExample {
  constructor() {
    __Fallback__fallback();
  }

  function __Fallback__fallback() internal {}

  function callContractWithFallback(address contractAddress, bytes memory data) external payable {}
  function callContractWithFallback2(address contractAddress, address contractAddress2, bytes memory data) external payable {}
}
