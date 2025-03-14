pragma solidity ^0.8.0;
contract fourth{
    address a;
    bool b;
    uint c;
    uint d;
    uint e;
    address f;
    constructor() public {
        check(0);
        c -= 4;
        check(true);
        d -= 11;
        check(12 < b);
        e -= 39;
        f = a;
    }
    function check(bool predicate) private pure {
        assert(predicate);
    }
}
contract fifth{
    uint160 a;
    uint160 b;
    uint160 c;
    uint160 d;
    uint160 e;
    uint160 f;
    uint160 g;
    uint160 h;
    uint160 i;
    uint160 j;
    uint160 k;
    uint160 l;
    uint160 m;
    uint160 n;
    uint160 o;
    uint160 p;
    uint160 q;
    uint160 r;
    uint160 s;
    uint160 t;
    uint160 u;
    uint160 v;
    uint160 w;
    uint160 x;
    uint160 y;
    uint160 z;
    constructor() public {
        check(0);
        a -= 40;
        check(125 < a);
        b -= 412;
        check(uint160(a) < b);
        c -= 10;
        check(uint160(c) == 11);
        d -= 9;
        check(uint160(d) == 12);
        e -= 21;
        check(uint160(e) == 22);
        f -= 16;
        check(uint160(f) < uint160(e));
        g -= 37;
        check(uint160(g) < uint
