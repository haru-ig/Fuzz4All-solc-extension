pragma solidity ^0.8.0;
contract MixedContactsExample51 {
    struct A {
        uint f1;
        uint f2;
    }
    mapping(uint => A) testVariables;
    function setFB(uint h, uint f2) public {
        testVariables[h].f2 = f2 + 1;
    }
    function getFB(uint h) public view returns (uint256 f1,uint256 f2) {
        f1= testVariables[h].f1;
        f2 = testVariables[h].f2;
    }
}

pragma solidity ^0.8.0;
contract MixedContactsExample52 {
    struct A {
        uint f1;
    }
    struct B {
        uint f2;
        uint f1;
    }
    A a;
    B b;
    mapping(uint => A) testTest;
    function test1 (uint h) public {
        a.f1 = h;
        testTest[h].f1 = h;
    }
    function test2 (uint h) public {
        a.f1 = h;
        testTest[h].f2 = 0;
    }
    function test3 (uint c, uint s) public {
        a.f1 = c;
        b.f1 = s;
        (b.f2, b.f1) = testTest[h].getFBH(this);
    }
    function test4 () public {
        a.f1 = 0xC00000000000000000000000000
