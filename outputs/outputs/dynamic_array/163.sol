pragma solidity ^0.8.0;
contract C2 {
    uint256[] public a;
    uint256 value;
    constructor() {
        uint256 x = 1;
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
		a[3] = 42;
		a[7] = 42;
        a[8] = 42;
    }
}
