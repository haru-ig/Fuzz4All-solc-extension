pragma solidity ^0.8.0;
contract SemanticMutation13
{
    uint16 private constant value = 4;
    function a() public pure {}
}
contract SemanticMutation14
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
}
contract SemanticMutation15
{
    uint16 private constant value = 4;
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
contract SemanticMutation16
{
    uint16 private constant value = 4;
    constructor()
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
contract SemanticMutation17
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
