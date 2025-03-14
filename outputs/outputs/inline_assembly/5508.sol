pragma solidity ^0.8.0;

contract ImmutableBc5 {
    uint public variableA = 0;
    function test() pure public returns (uint[1] memory) {
        uint[1] memory var1;
        var1;
        return var1;
    }
}
