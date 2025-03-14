pragma solidity ^0.8.0;
contract SemanticMutation3
{
    uint161 value = 3300000;
    function test_a () public returns (uint256)
    {
        return value;
    }
    function test_b () public pure returns (uint32 _val)
    {
        _val = 4 - 1;
        return value - 1;
    }
    function test_d () public pure returns (uint128 _val)
    {
        return value + 1;
    }
}
