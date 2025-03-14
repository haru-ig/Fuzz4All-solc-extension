pragma solidity ^0.8.0;
contract Callee {
  function call() external payable {
    MutatedCaller x = MutatedCaller();
    x.fallback();
  }
}
