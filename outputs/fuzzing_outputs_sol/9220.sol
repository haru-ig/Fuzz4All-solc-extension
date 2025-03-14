pragma solidity ^0.8.0;
contract Fallback {
  constructor(uint v) {
    require(v!= 0);
  }
}
