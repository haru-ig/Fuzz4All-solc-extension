pragma solidity ^0.8.0;

contract ContractWithCallValue {


  fallback() external payable returns (uint256) {
    return 333;
  }
}
