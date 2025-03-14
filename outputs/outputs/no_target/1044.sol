pragma solidity ^0.8.0;
contract SemanticMutation18
{
    uint16 private constant value = 4;
    function a() public pure {}
    function b() public pure returns (uint256)
    {
        return 5;
    }
}
contract SemanticMutation19
{
    uint16 private constant value = 4;
    function a() public pure returns (uint256)
    {
        return 5;
    }
    function b() public pure returns (uint256)
    {
        return 5;
    }
}
