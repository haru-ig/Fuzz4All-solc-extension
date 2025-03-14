pragma solidity ^0.8.0;
contract C2 {
    uint256[] public a;
    uint256 value;
    constructor() {
        a.push(42);
        a.push(42);
        a.push(42);
        a[3] = 42;
        a.push(42);
        a.push(42);
        a.push(42);
        a.push(42);
        a[3] = 42;
    }

    modifier nonmutated() {
        value = 42;
        _;
    }

    function nonmutated_func() {
        value = 42;
    }
}
