pragma solidity ^0.8.0;
contract E {
    uint public c;
    uint public E = 0;
    uint[] x = [ 1, 2, 3 ];
    function f() public {
        for (uint i = 0; i < 2; i++) x[i] *= i;
        uint x_var1 = x[0] * c + x[1] * c;
        for (uint i = 0; i < 2; i++) x_var1 = x_var1 * i;
        x[0] = x_var1 / c;
        x[1] = x_var1 % c;
        c ^= E;
        E += 1;
    }
}
