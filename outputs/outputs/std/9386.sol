pragma solidity ^0.8.0;

pragma experimental ABIEncoderV2;
contract Mutate6
{
    uint256 _x;
    function mutateB(uint256 a, uint256 b, uint x) internal returns(uint256)
    {
        x += a;
        x += a;
        x += a;
        x += a;
        x += a;
        x += a;
        x += a;
        x += a;
        x += a;
        x += a;
        x += b;
        x -= b;
        x += b;
        x -= b;
        uint y = _x*uint(b);
        return x;
    }
}
