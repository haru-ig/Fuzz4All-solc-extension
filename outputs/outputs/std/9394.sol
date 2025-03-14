pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Mutate0
{
    uint256 _x;
    function mutateB(uint256 a, uint256 b, uint x) internal returns(uint256)
    {
        uint256 y = x + a*b;
        return a/a;
    }
}
