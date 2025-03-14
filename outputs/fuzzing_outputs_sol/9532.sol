pragma solidity ^0.8.0;
contract Mutator {

  address public immutable callerAddress;

  constructor(address callerAddress_) {
    callerAddress = callerAddress_;
  }


  receive() external {}
}
