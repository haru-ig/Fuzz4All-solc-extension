pragma solidity ^0.8.0;
contract D {
    uint[3] a;
    uint d;
    function q() public pure {
        d = a[2] + 1;
    }
}
contract A is K, D {
    uint x;
    function A() public  {
        a[2] = 3;
        a[0] = 4;
        a[1] = 5;
        x = d;
    }
}

import '../truffle.sol';
contract Empty {
    empty();
}
