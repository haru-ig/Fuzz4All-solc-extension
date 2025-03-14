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
}
