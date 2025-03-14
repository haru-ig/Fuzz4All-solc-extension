pragma solidity ^0.8.0;
contract D {
  function bar(string memory) public payable {}
}
contract Caller {
  constructor(address c) public {
    c.call{value: 1 ether}(abi.encodeWithSignature("bar('hi ')", "hello ").length);
  }
}
