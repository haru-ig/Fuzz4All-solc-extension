pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Mutate7
{
    uint256 _x;
    function _mutateA(uint256 a, uint256 b) internal returns(uint256)
    {
        return _x*uint256(b);
    }
    function _mutateB(uint256 a, uint256 b) internal returns(uint256)
    {
        return a*_x*16uB/b;
    }
}
