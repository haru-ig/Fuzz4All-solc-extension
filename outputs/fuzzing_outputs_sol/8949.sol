pragma solidity ^0.8.0;
abstract contract CallContract {
  constructor() {
    __Caller__caller();
  }
  function __Caller__caller() internal {}
  function callContract(address contractAddress) external payable {}
}
