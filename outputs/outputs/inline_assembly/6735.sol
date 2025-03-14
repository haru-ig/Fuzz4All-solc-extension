pragma solidity ^0.8.0;
interface MixedContactsExample506Interface {
    function someOperation() external returns (uint56);
}
contract MixedContactsExample506 {
    uint56 x;
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    uint56 e;
    uint56 y;
    event SoMEvent(uint value, uint64 count);
    function doSomething() public returns (uint64) {
        a *= 8;
        b -= b;
        bool x3 = x % 3 == 0;
        x -= x3;
        a = (a * a) * (a * a);
        d *= 87;
        uint256[] memory memory_int_array = new uint256[](41);
        memory_int_array[10] = 20;
        x -= 42;
        if(!x3 || a < b || (x * x) < d) {
            a += b;
            b *= 1;
        } else {
            a += 20;
        }
        uint[] memory memory_int_array1 = new uint[](41);
        uint128 a3 = 30;
        b = (a3 + (24 + (98 + (a + (a + (a * 10))) + (a + 10) * (6 + 12)))) + x;
        a *= b % 3;
        e *= b % 99937;
        c *= b % 24;
        y = b % c + ((b % 31) < 32? uint8(8) : (3 > (b % c)? 34 : 5));
        c *= a + x3;
        while(x < e) {
            b -= (b / (b % 31) + 2 < 5? 34 : 3);
            uint256 b1 = ((b % 31) == 31 || b % 31 == 2)
