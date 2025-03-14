pragma solidity ^0.8.0;
contract MutatedBlock9Mutator4 {
    uint _var;
    function test2() public pure returns(uint) {
        uint x = _var + 1;
        return x;
    }
    function test() public returns(uint) {
        uint x = _var;
        uint y = x + 1;
        return y;
    }
}
