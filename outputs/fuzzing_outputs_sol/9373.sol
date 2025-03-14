pragma solidity ^0.8.0;
contract MutatingFallback7 {
  function mutate(contract MutatingFallback6 myFallback) external {
    if (address(myFallback).isContract()) {
      MutatingFallback6 myContract = (MutatingFallback6)contract(myFallback);
      myFallback.mutate(1, 2, 3);
    }
  }
}
