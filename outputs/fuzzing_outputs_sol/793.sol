pragma solidity ^0.8.0;
contract Caller {
  function test() public payable {
    address addressToCall = address(uint(0));
    addressToCall.call.value(1 ether)("0x");
  }
}
