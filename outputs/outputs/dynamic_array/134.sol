pragma solidity ^0.8.0;
contract C {
    uint[2] a;
    uint value;
    constructor () {
        a[1] = 42;
        value = 314;
        a.push(42);
        a.push(42);
        a[0] = value;
        a[1] = value;
        a[2] = value;
    }
}
