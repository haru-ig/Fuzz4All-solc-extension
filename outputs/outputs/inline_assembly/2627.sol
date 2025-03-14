pragma solidity ^0.8.0;
contract D {
    uint public x;
    uint public z;
    uint public ky;
    uint public w;
    function bar() public {
    (x, w, z) = (x - 1, x*5, 2 + 4x + 5);
    x = 7;
    x = x + ky;
    z = 7 + 3 - 4 * x;
    x = z + w;
    w = w * 8;
    }
}
