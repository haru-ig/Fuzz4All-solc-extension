pragma solidity ^0.8.0;
contract MutatedContractExample {
  address internal mutatedContractAddress;
  constructor() {
    mutatedContractAddress = address(new MutatedContract());
    __Mutable__mutate();
  }
  function __Mutable__mutate() internal {

  }
  function getMutatedContract() view public returns (address) { return mutatedContractAddress; }
}
