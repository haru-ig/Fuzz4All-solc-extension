pragma solidity ^0.8.0;
contract Overflow2 {
    string test1; string test2;
    uint x;
    constructor (
        string memory _test1,
        string memory _test2,
        uint _x
    ) public { }
    function settwo(uint _x) public {
        x = _x;
        test1 = "Test Value One";
        test2 = "Test Value Two"; }
    function set(uint _x) public {
        uint y = 0;
        x = _x;
        test1 = "Test Value Three";
        test2 = "Test Value Four";
        if (x > y) {
            x = x ^ y;
        }
        x = x | y;
        x = x + 13;
        x = x - 2147483648;
        uint z = x / 20;
        x = x % z;
        if (x >= 0) {
            uint n = 1 / x;
        } else {
            uint n = 1 / -x;
        }
        x = x << y;
        x = x >> z;
        x = x >>> y;
        x = x & y;
        x = x | y;
        x = x & 5;
        x = x ^ y;
        x = x * y;
        x = x / z;
        x = x % 200000000;
        x = x - 0xfffffffffffffe6600000000000000000000000000;
        x = x * 8;
        x > 1000000000000000000000;
        x /= 2;
        x %= 5;
        x += 1000000000000000000000;
        x = x % 2;
        x = x ^ 3;
        }
    function setone(uint _x) public {
        uint y = 1000000000000000000000;
        uint z = x + y;
        z = 1 << z >> 1;
        z = x - y + 100;
        }
    function setzero() public {
        uint n = 1;
        n = n / 0;    /* Reverts because overflow can not be handled
