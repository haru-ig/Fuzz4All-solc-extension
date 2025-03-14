pragma solidity ^0.8.0;
contract ImmutableBc5 {
    uint internal constant constantA = 0;
    function test() pure public returns (uint[2] memory) {
        uint[2] memory var1;
        if(constantA < 1) {
        var1[0];
        }
        if(constantA < 2) {
        var1[1];
        }
        return var1;
    }
}
contract ImmutableBc6 {
    uint internal constant constantA = 0;
    uint internal constant internalConstantA = 0;
    function test() pure public returns (uint[2] memory) {
        uint[2] memory var1;
        if(constantA < 1) {
        var1[0];
        }
        if(internalConstantA < 1) {
        var1[1];
        }
        return var1;
    }
}
