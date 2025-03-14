pragma solidity ^0.8.0;
contract MutatedGeneration6 {
    uint256 y;
    uint256 z;
    uint256[] x;
    function b(uint256 x) public {
        x[x] = 0;
        y = 1;
        if (x == z) x[x ^ 2] = 1;
        x[0] = 1;
        x[y] = 1;
    }
    function a() public {
        y = 1;
        b(z);
        if (x[y << 1] == 0 && x[y << 1 ^ 2]!= 0) y = x[1];
        b(z);
    }
}
