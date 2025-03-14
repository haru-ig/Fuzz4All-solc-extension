pragma solidity ^0.8.0;
contract Fallback {
  constructor() internal { }
  receive() external payable { }
}
