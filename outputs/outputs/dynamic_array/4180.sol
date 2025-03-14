pragma solidity ^0.8.0;
contract E {
    uint public c;
    uint public E = 0;
    uint[] x = [ 1, 2, 3 ];
    function f() public {
        for (uint i = 1; i > 0; i--) x[0] *= i;
        for (uint i = 1; i > 0; i--) x[0] -= c;
        c ^= E++;
    }
}
