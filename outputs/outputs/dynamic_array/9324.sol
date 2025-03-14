pragma solidity ^0.8.0;

import './Arrays.sol';

contract Arrays {
    uint[uint] x;
    uint[] x2;
    uint[] x3;

    uint[2 * 100] a;
    uint[100 / 2] a2;
    uint[] b1;
    uint[3 * 100 / 100] b2;
    uint[100000 / 100] c1;
    uint[10000000000 / 100] c2;

	uint[] e1;
    uint[][] e2;
    uint[][][] e3;

	uint[2 * (1000 / 8) / 2] d1;
    uint[2 * 100] d2;

    uint[] e;
    uint[][] e2;
    uint[][][] e3;
}
