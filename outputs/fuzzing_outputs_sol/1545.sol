pragma solidity ^0.8.0;
contract MutatorExample {
  function setFallback(address address_) external { address_fallback = address_; }
  address address_fallback;
}
contract ModularExample {
  function setFallback(address address_) external { address_fallback = address_; }
  address address_fallback;
}
