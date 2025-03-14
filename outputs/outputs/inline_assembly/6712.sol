pragma solidity ^0.8.0;
interface MixedContactsExample501Interface {
    function someOperation() external returns (uint56);
}
contract MixedContactsExample502 {
    uint56 x;
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    uint56 e;
    uint56 y = 9999999999999;
    event SoMEvent(uint value, uint64 count);
    function doSomething() public returns (uint64) {
        a *= 8;
        uint64 b = uint64(0xDEADBEEF0000000000000000000000000000000000000000000000000000000);
        c *= 948;
        uint64 d;
        uint64 y3 = uint64(0);
        d *= 87;
        uint64 y2 = 0;
        if(a!=0) {
            b += 5;
        }
        uint64 y5 = 1 ether;
        uint64 y1 = 0;
        uint64 y4 = uint64(0);
        e *= 7;
        a += c + b + y1 + y + y2 + y3 + y4 + y5;
    }
}
