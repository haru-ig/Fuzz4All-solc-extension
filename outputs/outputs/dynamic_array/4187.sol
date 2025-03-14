pragma solidity ^0.8.0;
contract E {
    uint public c;
    uint public E = 0;
    uint[] x = [ 1, 2, 3 ];
    uint y = 1;
    uint z;
    function g() public {
        y *= 2;
        z = 3 + x[2];
        x[0] += x[1];
        c += E;
        if (y < 80) E *= 2;
    }
}
