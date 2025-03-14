pragma solidity ^0.8.0;
contract C2 {
    uint256[] public a;
    uint256[][] public b;
    uint256[] public c;
    constructor() {
        uint256 x = 1;
        b.push([20,42]);
		c.push(42);
        c.push(42);
        c.push(42);
        c.push(42);
    }
}
