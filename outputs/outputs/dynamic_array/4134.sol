pragma solidity ^0.8.0;
contract C {
    uint[] memory x;
    uint[] memory x2;
    uint c = 0;
    uint X;
    uint Y;
    uint Z;
    uint[] memory x3;
    uint[] memory x4;
    uint[] memory x5;
    uint c2 = 0;
    uint C;
    uint D;
    function f() public {
        uint D = 1;
        uint[] memory x = new uint[](11);
        for (uint i = 0; i < 10; i++) {
            x[i] = 0;
            c++;
        }
        x[0] = 1;
        uint[] memory x2 = new uint[](11);
        for (uint i = 0; i < 10; i++) {
            x2[i] = 1;
            c2++;
        }
        x2[0] = 1;
        c += 2;
        x2[i] += X;
        x2[1] = i + 1;
        c += 2;
        x3 = x;
        for (uint i = 0; i < 10; i++) {
            x3[10 + i] = X + Z;
            c += 2;
            x3[i] += D;
            c += 2;
        }
        x3[10] += X + Z;
        c += 2;
        x5 = x;
        for (uint i = 0; i < 10; i++) {
            x5[ 20 + i] = X + Y;
            c += 2;
            x5[ 30 + i] = Y + C + Y + X;
            c += 2;
            x5[i] += D;
            c += 2;
        }
        x5[i] = i + 4;
        c2 -= 1;
        x5[0] = 1;
        c2 += 1;
        c += 2;
        x5[i] += X;
        c += 2;
        x5[10 + i] += X + Y;
        c2 += 1;
        c += 2;
        for (uint i = 0; i < 10; i++) {
            x5[20 + i] = X + Y;
            c += 2;
            x5[3
