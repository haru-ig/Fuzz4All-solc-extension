pragma solidity ^0.8.0;
contract E {
    uint public c;
    uint public E = 1;
    uint[] x;
    function f() public {
        for (uint i = 0; i < x.length; i++) x[i] = i;
        c = 1;
        E += 1;     }
}
