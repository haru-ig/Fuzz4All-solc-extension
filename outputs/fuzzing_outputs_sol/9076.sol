pragma solidity ^0.8.0;
contract Caller {
  address payable callerAddress;

  constructor() {
    callerAddress = payable(msg.sender);
  }

  fallback () {
    require(calldata.length > 0);
    callerAddress.transfer(calldata);
  }
}
