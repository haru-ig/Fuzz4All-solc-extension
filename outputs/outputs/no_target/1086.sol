pragma solidity ^0.8.0;
contract SemanticMutation3
{
    uint16 constant private value = 16;
    function test_a () public private returns (uint256)
    {
        return value;
    }
    function test_b () public private returns (uint256 _val)
    {
        _val = 4;
        return value - 1;
    }
    function test_c (uint64 _val) public private returns (uint256 _val2)
    {
        _val2 = _val;
        return _val;
    }
}
