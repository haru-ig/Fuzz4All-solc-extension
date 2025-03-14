pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract modified
{
    uint128 x = 0x111111111111111100000000000000000000000000000000000000000000000000;
    uint128 y = uint128(x);
    uint256 z = (y * 10000000000) + uint256(uint128(x * 10000000000));
}
contract modified2
{
    function f() public pure returns(uint256)
    {
        return uint256(uint128(0) / uint128(0));
    }
}

contract modified3
{
    function f() public pure returns(uint256)
    {
        bytes memory s1 = new bytes(32);
        uint256 x = uint256(uint128(0) / uint128(0));
    }
}
