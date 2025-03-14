pragma solidity ^0.8.0;

contract CallContractWithFallbackExample {
  address contractAddress;
  constructor() {
    contractAddress = address(new MutatedCallerWithFallbackExample());
  }
  function createCaller() public {
    CallContractWithFallbackExample callContractWithFallbackExample = new CallContractWithFallbackExample();
    contractAddress = address(callContractWithFallbackExample);
  }
  function callContractWithFallback(address contractAddress, bytes memory data) external payable {
    require(
      CallContractWithFallbackExample(contractAddress).callContractWithFallback(
        contractAddress,
        data),
      "Should not throw"
    );
  }
  function callContractWithFallback2(address contractAddress, address contractAddress2, bytes memory data) external payable {
    require(
      CallContractWithFallbackExample(contractAddress).callContractWithFallback2(
        contractAddress,
        contractAddress2,
        data),
      "Should not throw"
    );
  }
}
