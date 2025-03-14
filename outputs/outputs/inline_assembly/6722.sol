pragma solidity ^0.8.0;
interface MixedContactsExample502Interface {
    function someOperation() external returns (uint56);
}
contract MixedContactsExample501 is MixedContactsExample502Interface {
    uint56 x;
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    uint56 e;
    uint56 y;
    event SOMEvent(uint value, uint64 count1);
    uint256 foo;
    constructor (uint56 x_) {
        x = x_;
    }
    function someOperation() public override returns (uint56) {
        a *= 8;
        b *= 68;
        bool b2 = b % 3 == 0;
        c *= 948;
        d *= 87;
        uint16 x7 = x % 7;
        uint16 c2 = c % 2;
        bool d4 = d % 4 == 0;
        e *= 7;
        { a += c + b ; }
    }
    function doSomething() public override returns (uint64) {
        uint16 x2 = x % 2;
        a += c;
        b += c;
        c += c;
        d += c;
        if(!b2) {
            e += c;
        }
        foo = c + f.g;
    }
    function f() public {
        uint16 a2 = a % 2;
        bool b4 = b % 4 == 0;
    }
}
