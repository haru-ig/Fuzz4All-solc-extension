pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated
{
    uint z = 1;
    uint y = 2;
    uint x = z + y;
    uint w = x / 2;
    bytes32 t = 12 + "x";
    string msg = "x is the x: " + t;
}
