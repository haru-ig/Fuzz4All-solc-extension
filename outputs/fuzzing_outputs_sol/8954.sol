pragma solidity ^0.8.0;
contract Caller is CallContract {
  constructor() {
   __Caller__caller();
  }
  function __Caller__caller() internal {}
  fallback() external payable {}
}

contract CallContractWithFallback {
  constructor() {
    fallback();
  }
  function fallback() public payable {}
}
