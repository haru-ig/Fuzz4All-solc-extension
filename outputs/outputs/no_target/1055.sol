pragma solidity ^0.8.0;
contract SemanticMutation22
{
    [1] uint16 private constant value = 7;
    function a() private pure returns (uint256)
    {
        return 5;
    }
    function b() public pure returns (uint256)
    {
        if (value <= 400) {
            return 6;
        }
        return 4;
    }
}
