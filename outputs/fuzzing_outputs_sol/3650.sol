pragma solidity ^0.8.0;
contract MutateSemantic5Caller3 {
    struct S {
        uint u1;
        uint u2;
    }

    function modifyS(S storage _s, uint x, uint y) pure public {
        uint z1 = _s.u1*(x + 1);
        uint z2 = z1 + (_s.u1*(y + 1));
        _s.u2 = (4*x + 3*y + z2);
    }

    function apply(uint x, uint y) pure public {
        S storage s = new S();
        s.u1 = 1;
        s.u2 = 2;
        uint z = s.u1*(x + 1) + s.u1*(y + 1);
        s.u2 = s.u1*(x + 1) + (s.u2 + 1*(y + 1));
        modifyS(s, x, y);
    }
}
