pragma solidity ^0.8.0;
contract E {
    uint[] public s = [ 1, 2, 3 ];
    contract Inner {
        uint i;
        uint[] t = [ 4, 5, 6 ];
        uint j;
        uint h = 1;
        uint[] n;
        uint f;
    }
    function f() public {
        i += 1;
        i += s[i < 0? 0 + s.length : 0];
        j += 2*s[h];
        n[0] += 2 + s[0];
        f[0] += j;
        i = 0;
        i += s.length;
        f[0] += n.length;
        t[0] = 5;
        i = t.length;
        f[0] += n.length + i;
        f += s.length + 3;
        if (f > 15) s.splice(f - 20, 10);
        h+= 1;
        t.splice(t.length, 0, 1);
        c = s.length;
        h = 1;
    }
}
