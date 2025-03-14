pragma solidity ^0.8.0;
interface Proxy {
  function getImplementation() external view returns (address);
}
contract semanticallyEquiv0 {
  Proxy implementation;

  constructor(address newImplementation) {
    implementation = Proxy(newImplementation);
  }

  function getImplementation() external view returns (address) {
    return implementation.getImplementation();
  }
}
