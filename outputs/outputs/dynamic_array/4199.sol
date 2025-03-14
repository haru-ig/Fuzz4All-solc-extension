pragma solidity ^0.8.0;
contract F {
    uint[3,2] public x = [ 1, 2 ];
    constructor(uint input2) public {
         uint[3,2] memory prev = x;
         x[0,0] = input2;
         x[0,1] = input2;
         x[1,0] = input2;
         x[2,0] = input2;
         prev[1][0] = prev[1][1];
         prev[1][1] = prev[1][0];
     }
}
