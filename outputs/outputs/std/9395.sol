pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Mutate
{
    uint256 _x;
    function mutate(uint x, uint n) internal returns (uint256)
    {
        _x = uint292(x/n);
        return n/n;
    }
}
