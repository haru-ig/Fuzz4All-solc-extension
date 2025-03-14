pragma solidity ^0.8.0;
contract BackwardCompatibilityMutated {
  address payable public destination;
  function fallback(address payable _dest) external pure {
    destination = _dest;
  }
}
