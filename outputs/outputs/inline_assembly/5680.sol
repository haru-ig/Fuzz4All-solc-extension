pragma solidity ^0.8.0;
contract MutatedBlock8Mutator3 {
    uint public _var = 1;
    uint[2] public y;
    uint z;
    function test() public returns(uint) {
        uint x;
        x = _var + 1;
        y[0] = x;

        z = y[1];
        z = y[0] + 1;
        return z;
    }
}
pragma solidity 0.8.17;
contract MutatedBlock8Mutator4 {
    uint public _var = 1;
    uint[2] public y;
    uint z;
    function test() public returns(uint) {
        uint x;
        x = _var + 1;
        y[0] = x;

        z = y[1];
        z = y[0] + 1;
        return z;
    }
}
#pragma solidity ^0.8.0;
contract MutatedBlock9Mutator5 {
    uint public _var = 1;
    uint[2] public y;
    uint z;
    function test() public returns(uint) {
        uint x;
        x = _var + 1;
        y[0] = x;

        z = z_var + y[1];
        z = z + x;
        return x;
    }
}
