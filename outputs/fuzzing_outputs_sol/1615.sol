pragma solidity ^0.8.0;
contract Second {

  constructor() {
    __Fallback.fallback();
  }
  receive() external payable {

  }
}
