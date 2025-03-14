pragma solidity ^0.8.0;
interface MixedContactsExample501Interface {
    function someOperation() external returns (uint56);
}
contract MixedContactsExample501 {
    uint56 x;
    uint56 a;
    event SoMEvent(uint value);
    constructor(uint56 _x, uint56 _a) {
        x = _x;
        a = _a;
    }
    function doSomething() public returns (uint56) {
        x;
        a;
        a;
        x;
        x;
        x;
        a + c;
        b * a;
        byte s = 4;
        if( a > b ) {
            s -= 1;
        } else {
            s += 1;
        }
        e = s / 8;
        return uint56(a) + uint56(b);
    }
}
