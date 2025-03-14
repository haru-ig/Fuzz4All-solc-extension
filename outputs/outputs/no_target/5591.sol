pragma solidity ^0.8.0;
contract C {
    uint constant x = 1;
    uint constant y = 2;
    function o(uint a) internal pure returns (uint, uint){
        uint (a, uint c) = O().g(a, y);
        return (a, c);
    }
}
interface I {
    function f(uint a, uint b) internal pure returns (uint, uint);
}
contract D {
    uint constant a;
    uint constant b;
    constructor(uint _a, uint _b) { a = _a; b = _b; }
}
contract E {
    uint constant a;
    uint constant b;
    constructor(uint _a, uint _b) { a = _a; b = _b; }
}
contract F {
    uint constant a;
    uint constant b;
    constructor(uint _a, uint _b) { a = _a; b = _b; }
}
contract test {
    constructor() public {



        test(23,234);
        test1(234,43456);
    }
    modifier m1 {
        assert(1 == 1);
        _;
    }
    modifier m2 {
        assert(1 == 1);
        _;
    }
    modifier m3 {
        assert(1 == 1);
        _;
    }
    modifier m4 {
        assert(1 == 1);
        _;
    }
    function test1(uint a, uint b) public m1 {
        a + b1;
        b1 = a + b;
    }
    function test2(uint a, uint b) m1 public m2 {
        a + b2;
        b2 = a + b;
    }
    function test3(uint a, uint b) m2 public m2 {
        b1 = b2 + b1;
        b2 = a + b2;
    }
    function test4(uint a, uint b) m3 public {
        a + b3;
        b3 = a + b;
    }
    uint constant b1 = 0x1234567812345678;
    uint constant b2 = 0x1234567812345678;
    uint constant b3 = 0x1234567812345678;
    function assert(bool);
}
contract test1 is I, F {}

contract test2 is I, F {

}

contract A is I, F {

}

contract D2 is D, A, E {}
