pragma solidity ^0.8.0;
contract Test { constructor (uint _) { } }
contract Caller { constructor(address _x, uint _y) { testContract(_x, _y);} function testContract(address _x, uint _y) public { Test test; assembly {   _x.call(0, returndatasz(), 123) } } }
