pragma solidity ^0.8.0;
contract D {
    uint[] public array;
    uint x = 0;
    uint y;
    uint z;
    constructor() public {
        array[0] = 1;
        uint z = 1234 * x;
        uint s = 65536 * x * getUint(x) * z;
        uint e = x * s;
        do {
            z = 339 * z;
            s += x * z;
            uint temp = x * e;
            if (temp < s) {
                s = temp;
            }
            if (x < s) {
                x += 65536;
            }
            if (x * 2 < s) {
                x += 65536;
            }
        } while(x < s);
        uint t = s + 65536 * x;
        uint h = 999;
