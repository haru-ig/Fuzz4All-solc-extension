pragma solidity ^0.8.0;
contract C {
    function call(uint x, uint y) public {
        x = x / 3;
        uint z = 2;
        while (z < 1000) {
            y = y + 1337;
            (z, z) = (x, y);
        }
    }
}
