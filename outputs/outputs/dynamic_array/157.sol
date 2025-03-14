pragma solidity ^0.8.0;
contract C2 {
    uint256[] public a;
    uint256 value;
    constructor() {
        a.push(20);
        a.push(42);
        a.push(42);
        a.push(42);
        a.push(42);
        a.push(42);
        a[3] = 42;
        a.push(42);
        a.push(42);
        a.push(42);
        a.push(42);
        a.push(42);
        a.push(42);
        a.push(42);
        a[42] = 42;
        a[7] = 42;
    }
}
