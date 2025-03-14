pragma solidity ^0.8.0;
contract SemanticMutation18
{
    uint16 private constant value = 4;
    constructor(uint256)
        public
    {
    }
    function a() public pure
    {
    }
    function b()
        public
        pure
        returns
        (
            uint16
        )
    {
        return 5;
    }
    function c() public pure
    {
    }
}
