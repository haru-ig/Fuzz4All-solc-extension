pragma solidity ^0.8.0;
contract SemanticMutation
{
    uint16 private constant value = 7;
    function test_a () public returns (uint256)
    {
        return value + 1;
    }
    function test_b () public pure returns (uint256 _val)
    {
        _val = 4;
        return _val - 1;
    }
    function test_c () public pure returns (uint256)
    {
        return value;
    }
}
