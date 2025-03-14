pragma solidity ^0.8.0;
contract SemanticMutation3
{
    uint16 private constant value = 6;

    function test_a () public pure
    {
        value;
    }
    function test_b (uint256 _val) public pure
    {
        uint256 _val_ = value - 2;
        uint256 _val2 = uint256(value);
    }
    function test_c (uint16 _val) public pure
    {
        uint256 _val_ = value / 2;
        uint256 _val2 = uint256(value);
    }
    function test_d () public pure
    {
        uint256 _val = value * 2;
        uint8 result = _val;
        uint256 temp = uint256(_val);
    }

    function test_e (uint256 _val) public pure
    {
        uint256 _temp1 = value - 2;
        uint256 _temp2 = 2*value;
        uint256 _temp3 = uint256(uint256(value) / 2);
        uint256 _temp4 = 256 - 85;
        uint256 _temp5 = value + 0x5;
    }
    function test_f (uint256 _x) public pure
    {
        uint256 _x_ = 2*value;
        uint256 _x2 = uint256(value / 2);
    }
    function test_g (uint256 _x) public pure
    {
        uint256 _x_ = 0x5 * value;
        uint256 _x2 = uint256(value / 2);
    }
    function test_h (uint32 _x) public pure
    {
    }
    function test_h (uint8 _x) public pure
    {
    }
    function test_i (uint256 _x) public pure
    {
    }
    function test_j (uint8 _x) public pure
    {
    }
    function test_j (uint32 _x) public pure
    {
    }
}
