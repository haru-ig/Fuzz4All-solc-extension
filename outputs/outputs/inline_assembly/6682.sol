pragma solidity ^0.8.0;
interface MixedContactsExample501Interface {
    function someOperation() external returns (uint56);
}
contract MixedContactsExample500 {
    uint64 x;
    uint64 a;
    uint64 b;
    uint64 c;
    uint64 d;
    uint64 e;
    uint64 y;
    event SoMEvent(uint value, uint4 count);
    function doSomething() public returns (uint4) {
        x = x / 2;
        a = a + c;
        uint4 x3 = x % 3!= 0;
        b = b * 4 - c * 8;
        uint4 c4 = c + b + a + x;
        d = d * 4;
        e = e / 2;
        a = a - c;
    }
}
