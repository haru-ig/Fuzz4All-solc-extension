pragma solidity ^0.8.0;
contract SemanticMutation45
{
    uint16 private constant value = 5;
    uint16 public a = 5;
    function b() public pure returns (uint256)
    {
        return a + 1;
    }
    function c() public pure returns (uint256)
    {
        return value;
    }
}
