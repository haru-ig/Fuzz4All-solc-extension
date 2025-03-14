pragma solidity ^0.8.0;
contract MutatedWithOld { function testPrevious() public returns (bytes memory) {
   bytes memory prev = new bytes(10);
   bytes memory new0 = new bytes(40);
   bytes memory new1 = new bytes(50);
   bytes memory new2 = new bytes(60);
   memory mem0 = new memory(40);
   memory mem1 = new memory(50);
   memory mem2 = new memory(60);
   } }
