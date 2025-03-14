pragma solidity ^0.8.0;
library O {
    uint constant x = 1;
    uint constant y = 2;
    function g(uint a, uint b, uint c) internal pure returns (uint, uint, uint) {
        assert(b-42 == O.x);
        return (a, b, c);
    }
}
contract O{
    uint const x = 1;
    uint const y = 2;
    uint constant z = 3;
    function g(uint a, uint b, uint c) public pure returns (uint, uint, uint) {
        assert(b-42 == O.x);
        return (a, b, c);
    }
}

function f() internal view {
    O.O memory mem = O.O(x, y);
    (uint a, uint b, uint c) = O.g(z, mem.x, mem.y);
    assert(mem.x == a);
    (a, b, c) = O.g(mem.x, b, c);
    assert(b-42 == a);
    (a, b, c) = O.g(mem.x, mem.y, b);
    assert(mem.x == a);
    (a, b, c) = O.g(b, mem.x, mem.y);
    assert(b-42 == a);
    (a, b, c) = O.g(mem.x, b, c);
    assert(mem.x == a);
    (a, b, c) = O.g(mem.x, mem.y, b);
    assert(mem.x == a);
    (a, b, c) = O.g(b, mem.x, mem.y);
    assert(mem.x == a);
    (a, b, c) = O.g(mem.x, b, c);
    assert(mem.x == a);
    (a, b, c) = O.g(mem.x, mem.y, b);
    assert(mem.x == a);
    (a, b, c) = O.g(b, mem.x, mem.y);
    assert(mem.x == a);
    (a, b, c) = O.g(mem.x, b, c);
    assert(mem.x == a);
    (a, b, c) = O.g(mem.x, mem.y, b);
    assert(mem.x == a);
    c = O.g(mem.x, b, c)[2];
    assert(c == 3);
}
