pragma solidity ^0.8.0;
contract SemanticMutation20
{
    uint16 private constant value = 4;
    function a() public pure returns (uint256)
    {
        return 5;
    }
    function b() public pure returns (uint256)
    {
        if (value >= 400) {
            return 5;
        }
        return 5;
    }
}
