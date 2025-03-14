pragma solidity ^0.8.0;
contract R3 {
        uint a;
        uint b;
    constructor(uint _x) public {
        a = _x;
        b = a;
    }
    function seta(uint _x) public {
        b = _x;
        b += b*b;
        b += a;
    }
    function setb(uint _x) public {
        b = _x;
        b -= b*b*b;
        b += a;
    }
    function swap() public returns (uint) {
        uint temp = b;
        b = a;
        a = temp;
        return a + a*a*a + b + a*b + a*a*b + a*a + b*b*b;
    }
    function get() public view returns (uint) {
        return a + a*a + b*b;
    }

    function c() public view returns (uint) {
        return a + b*b + b;
    }
}

pragma solidity ^0.8.0;
contract R4 {
    struct Foo {
        uint256 bar;
        uint32baz;
        uint44qux;
    }
    uint x;
    address foo;
    mapping(address => Foo) bar;
    event barEvent(uint, address);
    function f(Foo _foo_) public {
        x = 0;

        bars(_foo_);
        bars(_foo_);
        bars(_foo_);
    }

    function bars(Foo _foo_) public {
        x = x + 4;
        uint256 bar = _foo_.bar;
        uint256 t = bar * bar;
        t = t.add(bar);
        uint256 baz = bar + bar + bar;
        uint256 t2 = bar / bar;
        baz = baz / b;
        uint256 test = bar * a_ + b - b_ - bar + 2x / 4 > bar / bar;
        uint256 y = r_.foo;
        uint256 x2 = r_(bar_);
