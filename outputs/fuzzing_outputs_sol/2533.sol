pragma solidity ^0.8.0;
contract Caller
{
  function test(address addr) public {
    addr.call.value(1 ether)("");
  }
}
