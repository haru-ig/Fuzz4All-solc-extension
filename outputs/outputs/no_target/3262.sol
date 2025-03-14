pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract six
{
    function f() external pure returns (uint16)
    {
        int x = -17;
        uint16 y = uint16(x / 17) + uint16((1/x - 17)**uint(3));
        uint16 z = (uint16(x / 17) * uint(18/((17/y - 1)**0x7fff))))**0x7fff;
        return z - uint16((1/x - 17)**uint(3));
    }
}
