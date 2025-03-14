pragma solidity ^0.8.0;
contract A {
    uint[419999999999999999999] public test;
    function f() public returns (uint) {
        uint x = 0;
        uint y = test[x];
        return y;
    }
}
