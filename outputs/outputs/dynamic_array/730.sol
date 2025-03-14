pragma solidity ^0.8.0;
contract test279 {
    uint[10] a;
    uint[10] b;
    function test(uint _a, uint _b, uint c) public {
        while (_a > 9) a[9] = 10;
        while (_b > 9) b[(100 + _b)] = 10;
        while ((a[100] + (_a + c)) < 50) a[(100 + _a)] += c;
    }
}
