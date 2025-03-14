pragma solidity ^0.8.0;
contract MutatedImpl {
  address payable _fallback;
  bytes4 constant _SIG = bytes4(keccak256("fallback()"));

  constructor() {
    _fallback = msg.data.delegatecall(abi.encodeWithSignature(_SIG, 0));
  }

  receive() external payable {
  }

  fallback() external payable {
    _fallback.transfer(msg.value);
  }
}
