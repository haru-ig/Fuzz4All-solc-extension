pragma solidity ^0.8.0;
contract MutatedWithNewAfterOld { function testPrevious() public returns (bytes[100] memory) {
var newX: bytes[100]; newX[0] = 1;
} }
