pragma solidity ^0.8.0;
contract MutatedBlock3Mutation84 {
    uint internal _var = 0;
    uint constant a = 0;
    uint constant b = 0;
    function test1() public returns (uint) {
        _var++;
        uint c = a;
        c++;
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
            a = 4;
            uint x;
            if (j == a) {
                for (uint x = 0; x < 1001; x++) {
                    a = 1 + a;
                }
            }
            return a;
        }
    }
    function test4() public returns (uint) {
        return _var;
    }
}
