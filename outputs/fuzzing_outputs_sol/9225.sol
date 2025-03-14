pragma solidity ^0.8.0;
contract FallbackException {
  constructor(uint v) {
    require(v!= 0);
    address payable receiver = msg.value;
  }
}
