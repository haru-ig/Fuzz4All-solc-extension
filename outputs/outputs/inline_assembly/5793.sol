pragma solidity ^0.8.0;
contract MutatedBlock2Mutation83 is MutatedBlock2Mutation83 {
    uint internal _another = 10;
    function test1() public returns (uint) {
        _another++;
        _another++;
        if (block.timestamp % 2 == 0) {
            _var++;
            _another++;
            return _var;
          } else {
            return _another;
          }
    }
}
