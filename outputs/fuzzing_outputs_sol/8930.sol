pragma solidity ^0.8.0;
abstract contract MutatedCallContractWithFallbackExample {
  constructor() {
    __MutatedFallback__fallback();
  }
  function __MutatedFallback__fallback() internal {}
  function mutate(bytes memory data) external payable returns (bytes memory) {}
  function mutate2(address contractAddress, bytes memory data) external payable returns (bytes memory) {}
}

pragma solidity >=0.5.8;
contract MutatedCallContractWithFallbackExample {
  constructor() {
    __MutatedFallback__fallback();
  }
  function __MutatedFallback__fallback() internal {}
  function callContractWithFallback(address contractAddress, bytes memory data) external payable returns (bytes memory) {}
  function callContractWithFallback2(address contractAddress, address contractAddress2, bytes memory data) external payable returns (bytes memory) {}
  function mutate(bytes memory data) public returns (bytes memory) {
    return mutate2(address(this), data);
  }
  function mutate2(address contractAddress, bytes memory data) public returns (bytes memory) {
    return callContractWithFallback(contractAddress, data);
  }
}
