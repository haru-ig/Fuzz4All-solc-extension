pragma solidity ^0.8.0;
contract Fallback {
  receive() external payable {}
  fallback() public payable {}
}
contract H {
  uint b;
  function f(address x) public {
    uint y;
    x.call{value: 1 ether}(abi.encodeWithSignature("bar('hi ')"));
  }
}
