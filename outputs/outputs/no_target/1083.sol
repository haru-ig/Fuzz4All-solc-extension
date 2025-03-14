pragma solidity ^0.8.0;
contract SemanticMutation3
{
    uint256 private constant value = 16;
    function test_a () public returns (uint256)
    {
        return value;
    }
    function test_b () public pure returns (uint32 _val)
    {
        return uint32(value - 1);
    }
    function test_c () public pure returns (uint256 _val)
    {
        return uint256(value);
    }
    mapping (uint32 => uint256) public m;
    function test_d () public view returns (uint256 _val)
    {
        _val = m[value] + m[value];
        return m[value];
    }
}
