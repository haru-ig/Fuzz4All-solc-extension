pragma solidity ^0.8.0;
interface MixedContactsExample502Interface {
    function someFunction() returns (uint56) {
        a = 4;
        b += c;
        return b+1;
    }
}
contract MixedContactsExample501 {
    uint56 x;
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    uint56 e;
    uint56 y;
    function someFunction() external returns (uint64)
    {
       x += a;
       a += c;
       a = 27;
       if (c > 5) {
        d += e;
        e *= 3;
        x += a;
        a += c;
       }
       return x - 6;
    }
}
