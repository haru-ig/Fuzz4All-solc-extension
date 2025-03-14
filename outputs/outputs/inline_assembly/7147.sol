pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample107Mutator2{
    uint public x;
    constructor() public {

        x = 1 << 14 ^ (1 << (132+2));
    }
}
