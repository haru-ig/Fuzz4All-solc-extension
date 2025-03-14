pragma solidity ^0.8.0;
contract C3 {
    uint256[] public a;
    uint256[][] public b;
    uint256[] public c;
    constructor() {
        uint256[] memory xArray = new uint256[](20);
        a = xArray;
        b.push(xArray);
		c.push(42);
        c.push(42);
        c.push(42);
        c.push(42);
        c.push(42);
    }
}
