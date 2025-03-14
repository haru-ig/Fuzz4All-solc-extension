pragma solidity ^0.8.0;
contract Mutated1 {
    uint64 public a;
    uint64[8] public b;
    uint256 c;
    uint256[8] public d;
    uint256[3] public e;
    uint256[7:6] public f;
    uint256[4:3] public g;
    uint256[4] public h;
    uint256 public i;
    uint48 j;
    uint256686 k;

    constructor (
        uint64 _value1,
        uint64[8] memory _value2,
        uint256 _value3,
        uint256[4:3] memory c,
        uint256[7:6] memory d,
        uint256[3] memory e,
        uint256[8:5] c
    ) public {
        a = _value1 + 16;
        b = _value2;
        c = c;
        d = d;
        e = e;
        f = f;
        g = g;
        h = h;
        i = i;
        j = j;
        k = k;
    }
    function set (
        uint64 a,
        uint64[8] memory b,
        uint256 c,
        uint256[4:3] memory d,
        uint256[7:6] memory f,
        uint256[3] memory e,
        uint256[8:5] memory c
    ) public {
        a = a + 16;
        b = b;
        c = c;
        d = d;
        e = e;
        f = f;
        g = g;
        j = j;
        k = k;
    }
    }
/* The second change is a change to the internal operation of the compiler, which introduces a few new and/or different instructions. The code has to be carefully optimized to stay as close as possible to the intended state, otherwise the compiler may be optimizing the wrong branch, leading to incorrect consequences. The compiler could be made to emit any number of instructions for a given optimization, or use any number of different optimizations. The most notable and significant change is that it now emits the branch always on top, and generates gas when the branch is taken. This allows to reduce the number of branches to test the condition, saving time and cost. If the branch is
