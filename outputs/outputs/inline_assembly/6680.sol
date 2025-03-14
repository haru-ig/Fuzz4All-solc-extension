pragma solidity ^0.8.0;
interface MixedContactsExample499Interface {
    function someOperation() external returns (uint56);
}
contract MixedContactsExample498 {
    uint56 x;
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 y;
    event SoMEvent(uint value, uint64 count);
    function doSomething() public returns (uint64) {
        a *= 8;
        b *= 68;
        if(x % 3 == 0) {
            c *= 948;
        }
        a += c;
        b += b;
    }
}
