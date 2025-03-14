pragma solidity ^0.8.0;
contract E {
    uint public c;
    uint public E = 0;
    uint[] x = [ 1, 2, 3 ];
    function f() public {
        for (uint i = 0; i < 2; i++) x[i] *= i;
        for (uint i = 0; i < 2; i++) x[i] += c;
        c ^= E;
        E += 1;
    }
}
