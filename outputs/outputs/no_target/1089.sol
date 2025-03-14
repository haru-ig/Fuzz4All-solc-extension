pragma solidity ^0.8.0;
contract SemanticMutation3
{
    uint16 private constant value = 16;
    function test_a () public pure returns (uint256)
    {
        return value;
    }
    function test_b () public pure returns (uint32 _val)
    {
        _val = 4;
        return value - 1;
    }
    function test_d () public pure returns (uint128 _val)
    {
        return value + 1;
    }
}
