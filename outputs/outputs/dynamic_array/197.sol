pragma solidity ^0.8.0;
contract C5 {
    struct Foo { uint x; uint y; }
    enum Fog { Ground, Sea, River }
    Fog a;
    Foo[] b;

    uint constant n = 3;
    Foo memory d;
    Foo[n] memory e;

    mapping (address => mapping (address => uint)) c;
    mapping (address => uint[]) s;

    function test() public view {
        c[address(this)][address(this)] = 10;
        s[address(this)][address(this)] = [1, 2, 3];
    }

    function test2() public pure {
        d.x = 2;
        e.y = 3;
    }

    function test3(uint a) public pure {
        d.x = a;
        e.y = d;
    }

    function test4(uint a) public pure {
        d.x = a;
        assert(a == e[0]);
    }

    function test5(uint a) public pure {
        d.x = a;
        assert(a == a);
    }

    function test6(address a) public pure {
        d.x = 2;
        c[a][address(this)] = 10;
    }

    function test7(address a) public pure {
        uint constant z = 2;
        b[a].x = 3;
        b[a].x = a;
        b[a].y = 2;
        b[a].y = z;
        c[address(this)][a] = 10;
        c[address(this)][a] = a;
    }

    function test8(uint a) public pure {
        c[a][a] = 10;
    }

    function test9(uint a) public pure {
        uint [] memory x = new uint[](3);
        x[0] = 0;
        x[1] = 1;
        x[2] = 2;
        s[a][a] = x;
    }
}
