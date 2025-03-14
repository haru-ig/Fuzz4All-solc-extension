pragma solidity ^0.8.0;
contract myContract{
    constructor() public {... }
    function foo(uint x) public returns (uint, stringmemory){
        return (0, "hi");
    }
    function f1(uint x) public returns (uint, stringmemory){
        (uint z, stringmemory w) = foo(x);
        return (x, w);
    }
    function f() public returns(uint, stringmemory, bool, uint16) {
        (uint a, stringmemory b) = foo(0);
        (uint z, bool p) = f1(0);
        (stringmemory c, ) = f(0);

    }
    function g(uint x) public returns(stringmemory){
        return a;
    }
}

contract testcase{
    function e() public returns(uint, bool, bool, uint16, uint16){
        return f(1);
    }
    function f(uint x) public returns(uint, bool, bool, uint16, uint16){
        (, stringmemory z, bool p, uint32, uint16 q) = g(x, "", "", 0, "");
        uint a = x;
        bool b = true;
        bool c = x > 0;
        uint16 d = 0;
        uint256 e = x < 2**128 -1;
        return (x, b, p, d, e);
    }
    function g(uint x, stringmemory z, bool p, uint32, uint16 q)!{
        return (x, z, p, z, q);
    }
}
