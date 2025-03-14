pragma solidity ^0.8.0;
contract MixedContactsExample99 {
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    uint56 e;
    uint56 x;
    uint56 ex;
    function doSomething() public returns (uint64) {
        a = a * 0x62;
        b = b * 0x94;
        c = c * ex;
        d = d * c;
        e = e * ex;
        b = b + e - c;

        if(b >= 0) {
            return a * d;
        }

        return b;
    }
}
