pragma solidity ^0.8.0;
contract SemanticMutation22
{
    uint function a() public pure returns (uint)
    {
        return 5;
    }
    function b() notpure public pure
    {
    }
}
