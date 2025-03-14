pragma solidity ^0.8.0;
contract D {
  receive() external payable {
    fallback();
  }
}
contract Caller {
  constructor() public {
    D(0x01).bar(2 * 2);
  }
}
