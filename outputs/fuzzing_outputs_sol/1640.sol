pragma solidity ^0.8.0;
contract D {
  receive() external payable {}
  fallback() external payable {}
}
contract Caller {
  constructor(address c) public {
    bytes memory data = "hi world";
    if (c.call{value: 0.5 ether}(abi.encodeWithSignature("bar(uint)", 111255)) == 0) revert();
  }
}
