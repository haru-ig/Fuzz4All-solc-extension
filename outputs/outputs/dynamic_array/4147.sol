pragma solidity ^0.8.0;
contract C {
    uint D;
    uint[2] p;
    function f() public {
        uint x0 = p[0];
        D += 1;
        uint tmp1_0 = x0 + x0 + p[1];
        p[0] += 3;
        uint x1 = p[0] + p[1];
        p[1] += 3;
        c++;
        D += 1;
        c++;
        uint tmp2_0 = p[0];
        p[0] = p[0] * p[1];
        p[1] = p[0] * p[0] * p[0];
        tmp2_1 = tmp1_0 + tmp2_0 + x1 + x1;
        p[1] += 5;
        tmp2_0 = x0 + 2;
        x0 = x0 + x1 + tmp2_0 + tmp2_0 + D + tmp2_1 + p[1];
        p[1] += 3;
        c++;
        D += 1;
        c++;
        uint[2] memory x2 = p;
        p[0] = p[0];
        p[1] = p[0];
        x0 = p[1];
        p[1] = 2;
        D += 1;
        c++;
        uint[2] memory x3 = new uint[](2);
        p[1] = 2;
    }
}
