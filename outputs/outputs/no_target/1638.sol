pragma solidity ^0.8.0;
contract Semantic0010 {
    function notEqualWithoutCastAndEquality(uint256 x, uint y) public pure {
        if (y >= 0xFFFFFFFF7FFFFFFFFFFFU) {
            x += 1;
        } else {
            x >= x^y;
        }
    }
}

pragma solidity ^0.8.0;
contract Semantic0011 {
    function notEqualWithoutCastAndEquality(uint256 x, uint y) public pure {
        require(y >= 128129785 * x);
        assert(x >= 128129785 * x);
        x >>= 32;
        assert(x >= 128);
    }
}

pragma solidity ^0.8.0;
contract Semantic0012 {
    struct A {
        uint b;
        uint c;
        uint d;
        uint e;
        uint f;
        uint g;
        uint h;
        uint i;
        uint j;
        uint k;
        uint l;
        uint m;
        uint n;
        uint o;
        uint p;
        uint q;
        uint r;
    }

    uint a;

    A functionAndReturn(A memory p) public pure returns (uint) {
        assert((p.a + p.b + p.c + p.d + p.e + p.f + p.g + p.h + p.i + p.j + p.k + p.l + p.m + p.n + p.o + p.p + p.q + p.r) % 10 == 0);
        return (p.a + p.b + p.c + p.d + p.e + p.f + p.g + p.h + p.i + p.j + p.k + p.l + p.m + p.n + p.o + p.p + p.q + p.r) - 1;
    }

    function call(A memory p) public returns (uint) {
        return functionAndReturn(p);
    }
}

pragma solidity ^0.8.0;


contract MyContract {
    uint128 value=20010001 * 2001100020011001;

    function set(uint32 x) public {
        emit Set(x);
    }

    event Set(uint32 indexed x);

    function get() public view returns (uint32
