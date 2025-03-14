pragma solidity ^0.8.0;
contract MutatedBlock2Mutation83 {
    uint internal _var = 0;
    uint internal _another = 0;
    function test1() public returns (uint) {
        _var++;
        return _var;
    }
    function test2() public returns (uint) {
        if (block.timestamp % 2 == 0) {
            _var++;
            _var++;
            return _var;
          } else {
            return _var;
          }
    }
    function test3() public returns (uint) {
        uint j;
        if (j == 0) {
            return 0;
        } else {
            uint a;
            a = j;
            return a;
        }
    }
    function test4() public returns (uint) {
        return _var;
    }
}
