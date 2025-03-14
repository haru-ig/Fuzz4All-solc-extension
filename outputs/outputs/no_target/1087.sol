pragma solidity ^0.8.0;
contract SemanticMutation3
{
    uint16 private constant value = 3;
    function test_a () public returns (uint256)
    {
        uint16 private constant y = value;
        uint256 const z = 0 + y;
        uint163 constant zz = y + value;
        return zz;
    }
}
