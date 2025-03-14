pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated
{
    uint x = 2;
    uint z = x;
    constructor () {
        x = 1;
    }
}
