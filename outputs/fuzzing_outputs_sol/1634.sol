pragma solidity ^0.8.0;
contract D {
  receive() external payable {}
}
contract Caller {
  constructor(address c) public {
    c.call{value: 1 ether}(abi.encodeWithSignature("bar('hi ')"));
  }
}
