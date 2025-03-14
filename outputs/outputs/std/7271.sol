pragma solidity ^0.8.0;
contract Butterfly
{
    function butterfly(uint x) public pure {
        mut uint[99] memory tmp;
        assembly {
            tmp[0] := x
        }
        tmp[1] *= 2;
        tmp[2] *= 3;
        tmp[3] *= 5;
        tmp[4] *= 7;
        tmp[7] *= 11;
        tmp[8] *= 3;
        x ^= tmp[8];
        tmp[7] ^= tmp[1];
        tmp[8] ^= 1;
        tmp[9] ^= tmp[4];
        tmp[4] ^= tmp[0];
        tmp[0] ^= 0;
        while(x > 50000000000) {
            tmp[3] += x / 194410465;
            x -= 194410465 * tmp[3];
            tmp[2] += x / 11446493 * 3;
            x -= 11446493 * tmp[2];
            tmp[1] += x / 2060369 * 5;
        }
        x = tmp[2] % 2359193;
        uint y = tmp[7] % 15495287;
        uint zz = tmp[0] & 11416627;
        tmp[0] >>= 2;
        tmp[6] += x / 721193 * 9;
        x -= 721193 * tmp[6];
        tmp[9] += y / 60119 * 1;
        y -= 60119 * tmp[9];
        tmp[3] += z / 23581 * 5;
        x -= 23581 * tmp[3];
        tmp[5] += tmp[8] / 2081694401;
        tmp[7] += tmp[0] / 664064187;
        x -= 664064187 * tmp[7];
        y += tmp[1] / 503126401;
        z += tmp[4] / 179977302;
        zz += tmp[1] / 201870513;
        zz -= x / 128;
        zz = zz * zz;
        zz -= x / 4;
        zz = zz * zz * zz;
        x -= tmp[5] / 985214597;
        z += x / 7586481 * 4;
        tmp[7] -= z / 4183379 * 12;
        z -= 4183379 * tmp[7
