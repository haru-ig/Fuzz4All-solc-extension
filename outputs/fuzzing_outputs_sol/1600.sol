pragma solidity ^0.8.0;
contract NonMutatingMutators {
  address account;

  constructor() {
  }
  modifier onlyCallerOrCaller {
    if (msg.sender == address(this)) {
      _;
    } else {
      _;
    }
  }
  function receive() external payable {
    account.transfer(msg.value);
  }
}
contract FallbackMutators {
  bytes32 public fallback;
  constructor(bytes32 memory _fallback) {
    fallback = _fallback;
  }
   modifier onlyCallerOrCaller {
    if (msg.sender == address(this)) {
      _;
    } else {
      _;
    }
  }
  function receive() external payable {
    fallback();
  }
}
