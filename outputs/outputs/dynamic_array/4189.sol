pragma solidity ^0.8.0;
contract E2 {
    uint public c;
    event Ev(uint a);
    uint public E = 0;
    uint[] x = [ 1, 2, 3 ];
    uint y = 1;
    uint z;
    event E2v(uint a);
    function g() public {
        y *= 2;
        y *= 2;
        y *= 2;
        z = 3 + x[2];
        x[0] += x[1];
        c += E;
        Ev(E);
        E2v(E);
        if (y < 80) E *= 2;
    }
}
