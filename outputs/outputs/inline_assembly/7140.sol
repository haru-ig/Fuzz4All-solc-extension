pragma solidity ^0.8.0;
contract OptimizelyExample106Mutator3{
    uint public x = 123456;
    uint[2] public s;
    uint public[5] private z;
    constructor() public {
        s[0] = s[1] = x;
        z[1] = s[0] + s[1];
    }
}
