pragma solidity ^0.8.0;
contract MutatedBlock64Mutation {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint c = 1;
        while (true) {
          c += block.number * 10000000000;
          block.number++;
          c += block.timestamp * 10000000000;
          block.timestamp--;
        }
    }
