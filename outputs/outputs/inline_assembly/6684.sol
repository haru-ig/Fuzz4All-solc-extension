pragma solidity ^0.8.0;
interface MixedContactsExample302Interface {
    function read(uint56 n) external returns (uint56);
    function read_2() external returns (uint56);
}
contract MixedContactsExample301 {
    uint56 x;
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    MixedContactsExample302Interface constant myLib = MixedContactsExample302Implementation.myLib;
    event SoMEvent(uint value, uint64 count);
    constructor() {
        a = myLib.read(8);
        b = myLib.read(3);
        c = a + b * 2;
    }
    function doSomething() public returns (uint64) {
        d = b * 68;
        a = a + c + b ;
        d = d * 87;
        a = a + d + myLib.read_2();
        a = a + d * 4;
        a = a + c;
        a = a * 2 + b + x;
        return c + c * a;
    }
}
