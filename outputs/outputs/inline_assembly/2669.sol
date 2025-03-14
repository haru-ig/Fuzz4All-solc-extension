pragma solidity ^0.8.0;
contract D {
    uint public y = 0;
    uint public x = 5 * y - 1;
    uint public z = 2 * x;
}

contract E {
    uint z;
    uint x;
    uint w;

    function E (uint v) {
        x = 2 * v;
        w = x;
        z = v;
    }
}
