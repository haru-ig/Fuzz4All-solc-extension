pragma solidity ^0.8.0;
contract F {
    struct S { uint x; uint y; uint z; uint w; }
    uint public c;
    function f() public {
        S[] memory x = new S[](2);
        x[0].x = 1;
        c++;
        for (uint i = 1; i < 8; i++) {
            x[i].x = 1 + x[i-1].x;
            D += 1;
            c++;
        }
        x[1].x = x[1].x + x[0].x;
        c++;
    }
}



pragma solidity ^0.8.0;
contract G {
    uint public c;
    uint public D;
    function f() public {
        uint[] memory x = new uint[](2);
        x[1] = x[0] + x[1];
        c++;
        for (uint i = 1; i < 4; i++) {
            x[1] = x[0] + x[1];
            D += 1;
            c++;
        }
    }
}
contract H {
    uint public c;
    uint public D;
    uint x;
    function f() public {
        uint[] memory x = new uint[](2);
        x[1] = x[0] + x[2];
        for (uint i = 1; i < 4; i++) {
            x[1] = x[0] + x[1];
            D += 1;
            c++;
        }
    }
}
/* Please create a short program which
