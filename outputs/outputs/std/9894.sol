pragma solidity ^0.8.0;
contract Array {

    uint256[] public a;
    uint256[] public b;
    uint256[] public c;
    uint256[] public d;
    uint256[] public e;
    uint256[] public f;
    uint8[] public g;
    uint8[] public h;
    uint8[] public i;
    uint8[] public j;
    uint8[] public k;
    uint8 s;
    uint24[] public l;
    uint24[] public m;
    uint8 j1;
    uint8 k1;
    uint8 m1;
    uint8 n1;
    uint8 i1;
    constructor () {
        s = 100;
        i1 = 0;
        j1 = 0;
        k1 = 0;
        m1 = 0;
        n1 = 0;
    }
    function append(uint256 value) public {
        a.push(value);
        b.push(value + a[a.length % a.length]);
        c.push(value * 100);
        d.push(value / 100);
        e.push(uint256(value.toLowByte()) + uint256(value >= 0xffffffffffffffffffffffffffffffff));
        f.push(uint256(value) + (uint256(value) >= 0xffffffffffffffffffffffffffffffff));
    }
}
