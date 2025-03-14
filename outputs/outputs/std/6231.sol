pragma solidity ^0.8.0;
contract MutatedGeneration6 {
    [uint256,uint256] public x;
    function g(uint256 y) public {
        if (y == 0) x[1] = 1;
        if (y == 1) x[0] = 1;
        if (y == 2) x[2] = 1;
    }
}
