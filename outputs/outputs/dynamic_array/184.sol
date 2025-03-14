pragma solidity ^0.8.0;
contract C3 {
    uint256[] public a;
    uint256[][][3] public b;
    uint256[6] public c;
    constructor() {
        uint256[3] memory xArray = new uint256[](3);
        b[0][0] = xArray;
		b[1].push(42);
        b[2].push(42);
        b[2].push(42);
        b[2][0] = 42;
        b[2][1] = 42;
        uint256[3] memory x = b[0];
        uint256 x2 = x[0];
    }
}
