pragma solidity ^0.8.0;
interface MixedContactsExample502Interface {
    function someOperation() payable external;
}
contract MixedContactsExample501 {
    uint56 x;
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    uint56 e;
    uint56 y;
    event SoMEvent(uint value, uint64 count);
    constructor() public {
        a *= 8;
        b *= 68;
        bool x3 = x % 3 == 0;
        c *= 948;
        d *= 87;
        if(!x3) {
            b += 5;
        }
        e *= 7;
        a += c + b ;
        emit SoMEvent(this.doSomething(), this.x * this.a);
    }
    function doSomething() public returns (uint64) {
        a *= 8;
        b *= 68;
        bool x3 = x % 3 == 0;
        c *= 948;
        d *= 87;
        if(!x3) {
            b += 5;
        }
        e *= 7;
        a += c + b ;
    }
}

pragma solidity ^0.8.0;

 contract MixedContactsExample502 {
    uint56 x;
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    uint56 e;
    uint56 y;
    event SoMEvent(uint value, uint64 count);
    constructor(uint56 _x, uint56 _a, uint56 _b, uint56 _c, uint56 _d, uint56 _e, uint56 _y) public{
        a = _a;
        b = _b;
        c = _c;
        d = _d;
        e = _e;
        x = _x;
        emit SoMEvent(x, _a*
