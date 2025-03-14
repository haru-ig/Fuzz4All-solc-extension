pragma solidity ^0.8.0;
contract test279 {
    address[3] a1;
    uint[10] b;
    uint[5] c;
    uint[8] d;
    uint[19] e1;
    uint[3];
    function test(uint _b) public {
        while (_b > 8) c[8] = 10;
        while (_b > 7) c[7] += 10;
        while (c[7] > 9) while (b[9] < 10) a1[10] = a1[10] + 1;
        while (_b > 6) d[6] += _b;
        while (_b > 5) while ((a1[5] + 1) > 50) a1[5] += _b;
        while (_b > 4) while ((a1[4] % 10) < 3) a1[4] += 2 * _b;
    }
}
