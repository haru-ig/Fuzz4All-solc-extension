pragma solidity ^0.8.0;
contract SemanticMutation21
{
    struct F
    {
        uint8 f_int;
        bytes32 f_bytes;
    }
    F f;
    uint8 private constant value = 4;
    function a() public pure returns (uint256)
    {
        return uint256(f.f_bytes);
    }
    function b() public pure returns (uint256)
    {
        return uint64(f.f_bytes);
    }
    function c() public pure returns (uint256)
    {
        return uint256(f.f_int);
    }
    function d() public pure returns (uint256)
    {
        return 5;
    }
}
