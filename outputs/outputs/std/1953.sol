pragma solidity ^0.8.0;
contract Cast_equivalent_2 {
    uint8 public i = 4;
    uint16 internal j = 2;
    function f() public pure returns (uint256) {
        i = 2000000000;
        j = 20000000;
        return i;
    }
}

contract Cast_equivalent_1 {
    uint32 public i = 1;
    uint64 public j = 3;
    constructor(uint _i, uint _j) {
        i = uint32(_i);
        j = uint64(_j);
    }
}
contract Cast_equivalent {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    uint public f;
    uint public g;

    function Cast_equivalent(uint32 _a, uint32 _b, uint32 _c, uint32 _d, uint32 _e, uint32 _f, uint32 _g) {
        a = _a;
        b = _b;
        c = _c;
        d = _d;
        e = _e;
        f = _f;
        g = _g;
    }
}
