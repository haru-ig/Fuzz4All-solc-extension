pragma solidity ^0.8.0;
contract SemanticMutation22
{
    uint16 private constant value = 7;
    function a() public pure returns (uint256)
    {
        return 8;
    }
    function b() public pure returns (uint256)
    {
        if (value > 57) {
            return 9;
        }
        return 10;
    }
}
