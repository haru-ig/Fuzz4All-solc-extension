pragma solidity ^0.8.0;
contract SemanticMutation11
{
    uint16 private constant value = 4;
    function a() public pure {}
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
contract SemanticMutation12
{
    uint16 private constant value = 4;
    function a() public pure {}
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
    function d() public pure
    {
    }
}
