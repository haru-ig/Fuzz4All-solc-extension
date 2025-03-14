pragma solidity ^0.8.0;
contract C {
    constructor () {
        value = 123;
        a.push(42);
        a.push(value);
        a[0] = 0;
        assert(42 == a[1]);
    }
}
