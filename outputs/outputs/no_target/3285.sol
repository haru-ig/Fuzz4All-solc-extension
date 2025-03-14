pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract modified
{
    uint x = 65535;
    uint y = 2**x;
    uint z = y + 65535;
}
