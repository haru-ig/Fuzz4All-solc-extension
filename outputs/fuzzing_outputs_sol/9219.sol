pragma solidity ^0.8.0;
contract CallerDelegateFallback is FallbackDerived {
  receive() external payable {
  }
}
contract CallerNoFallback {
  receive() external payable {
    console.log("Received Ether.");
  }
}
