pragma solidity ^0.8.0;
contract MutateProgram {
    uint constant private MAX_VALUE = 2147483648;
    constructor() public {
        uint z = MAX_VALUE - 1;
        uint w;
        uint x = 1;
        uint y = z / x;
        x = x / y;
        bytes1 b;
        b = 0xFF;
        b = bytes1(x);
        x = x / bytes1(255);
        x++;
        x *= bytes1(7);
        x += byte(14);
        x *= -b;
        uint t = 100;

        t = x % y;
        x /= MAX_VALUE;
        x %= bytes1(0xFFFF);
        i++;
        uint k;
        bytes1 l;
        l = bytes1(t);
        l *= t + x;
        l = 0xFFFF * t;
        l *= 0xFFFF * bytes(x);
        uint k = 0;
        k++;
        k += bytes3(y);
        k /= -bytes1(bytes1(2));
        bytes1 m = 0xFF;
        k = 0;
        m = bytes(x);
    }
}
