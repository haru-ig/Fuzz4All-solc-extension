pragma solidity ^0.8.0;
contract MutatedWithOld { MutatedWithNew previous; }
contract MyContract { address address1; function testPrevious() public { previous.testPrevious(); } }
