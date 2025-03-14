pragma solidity ^0.8.0;
contract SemanticMutation
{
    uint public constant value = 16;
    function test_a () public pure returns (uint)
    {
        return value;
    }
    function test_b () public pure returns (uint16 _val)
    {
        _val = 4;
        uint8 _x = uint16(1);
        return value - 1;
    }
    function test_c (uint16 _z) public pure returns (uint256 _val)
    {
        uint8 _x = uint16(1);
        _val = 0;
        uint256 _y = uint8(1);
        return 0;
    }
}
