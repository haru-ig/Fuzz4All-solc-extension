pragma solidity ^0.8.0;
contract Mutation01 {

  constructor() {
    ContractWithFallback14.modify(address(this), 4);
  }

  receive() payable {}
}
contract Mutation02 {

  constructor() {
    ContractWithFallback14.modify(address(this), 3);
  }

  fallback() payable {}
}
