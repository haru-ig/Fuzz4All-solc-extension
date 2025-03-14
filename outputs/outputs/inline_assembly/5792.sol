pragma solidity ^0.8.0;
contract MutatedBlock2Mutation84 {
    uint internal _first = 0;
    uint internal _second = 0;
    function test1() public returns (uint) {
          _first = 10;
        return _first;
    }
    function test2() public returns (uint) {
          _second = 13;
        return _second;
    }
    function test3() public returns (uint) {
          uint _first = _second;
        return _first;
    }
    function test4() public returns (uint) {
          uint _first = 15;
        return _second;
    }
}
