pragma solidity ^0.8.0;
contract mutation {
    function f() public {
        uint x = 0, y = 1, z;
        x = y;
        (y, z) = (y, z);
        c = 2;
        z = 3;
        (x, c) = (c, x);
        z = 4;
    }
}
