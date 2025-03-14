pragma solidity ^0.8.0;
contract E {
    uint public c;
    uint public E = 0;
    uint[] array;
    function f() public {
        c = 1;
        for (uint i = 0; i < 8; i++) array[i] = 5;
        E += 1;
    }
}
