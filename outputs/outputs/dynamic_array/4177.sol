pragma solidity ^0.8.0;
contract E {
    uint public c;
    uint public E = 0;
    uint[] x;
    function f() public {
        for (uint i = 0; i < 8; i++) x[i] = 5;
        c = 1;
        E += 1;
    }
}
