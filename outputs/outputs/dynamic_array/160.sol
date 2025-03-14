pragma solidity ^0.8.0;
contract C2 {
    uint256[] public a;
    uint256 value;
    constructor() {
        a[0] = 20;
        a[3] = 42;
        a[4] = 42;
        a[6] = 42;
        a.push(42);
        a.push(42);
        a.push(42);
        a.push(42);
        a.push(42);
        a.push(42);
    }
}
