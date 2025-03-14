pragma solidity ^0.8.0;
contract G2 {
    uint[3][20] memory x = [ [ 0, 0 ], [ 0, 0 ], [ 0, 0 ], [ 0, 0 ], [ 0, 0 ], [ 0, 0 ], [ 0, 0 ], [ 0, 0 ], [ 0, 0 ] ];
    constructor(uint[3][20] memory input, uint arg) public {
         uint[3][20] memory prev = x;
         x = input;
         x[3][arg] = x[2][arg];
         x[2][arg] = prev[1][arg];
         x[0][arg] = x[0][arg] + 1;
         prev[2][arg] = prev[2][arg] + 1;
         prev[1][arg] = x[1][arg];
         prev[0][arg] = prev[0][arg] + 1;
    }
}
