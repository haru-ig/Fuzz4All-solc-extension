pragma solidity ^0.8.0;
contract C3 {
    uint256[] public a;
    uint256[][][] public b;
    uint256[] public c;
    uint256[][][] public d;
    constructor() {
        uint256 x = 1;
        b[0].push([1]);
		d[0].push([[20,34]]);
		d[1].push([[34,42]]);
		c.push(42);
    }
}
