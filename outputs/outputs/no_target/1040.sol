pragma solidity ^0.8.0;
contract SemanticMutation1
{
    uint16 private constant value = 5;
    function a() public pure { }
}
contract SemanticMutation2
{
    uint16 private constant value = 5;
    function a() public pure { }
    function b() public pure { }
    function c() public pure { }
}
contract SemanticMutation3
{
    uint16 private constant value = 5;
    function a() public pure
    {
    }
    function b() public pure
    {
    }
}
contract SemanticMutation4
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
}
contract SemanticMutation5
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
contract SemanticMutation6
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
    function e() public pure
    {
    }
    function f() public pure
    {
    }
}
contract SemanticMutation7
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
