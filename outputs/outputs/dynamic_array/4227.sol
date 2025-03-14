pragma solidity ^0.8.0;
contract G {
    uint[10] x = new uint[](20);
    uint[10] prev = x;
    uint y = 0;

    function f() public {
        prev[9] = y;
        for (uint index = 0; index < 9; index++) {
            prev[index] = x[8];
        }
        prev[9] = 1;
        uint256[10] memory next;
        next[0] = x[8];
        x[9] = x[9];
        uint[9] memory next2;
        next2[9] = y;
        y = x[8];
        x[9] = prev[0];
        prev[0] = x[8];
        prev[9] = 1;
        x[8] = prev[1];
        prev[1] = x[8];
        prev[9] = 1;


        x[9] = y;
        if (y!= x[9]) revert();

    }
}
