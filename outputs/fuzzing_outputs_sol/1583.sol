pragma solidity ^0.8.0;
contract MyContractOld {
  constructor() {
  }
  fallback(address _unused) receive() payable {}
}
