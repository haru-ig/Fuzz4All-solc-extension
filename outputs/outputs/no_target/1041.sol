pragma solidity ^0.8.0;
contract SemanticMutation13
{
    uint16 private constant value = 4;
    uint256 private constant a_value = 4;
    function a() public pure {}
    function c()
        public
        pure
        returns
        (
            uint16
        )
    {
        return 5;
    }
    function d()
        public
        pure
        returns
        (
            uint16
        )
    {
        return 5;
    }
    function e()
        public
        pure
        returns
        (
            uint16
        )
    {
        return a_value | 5;
    }
}
contract SemanticMutation14
{
    uint16 private constant value = 4;
    uint256 private constant a_value = 4;
    function a() public pure {}
    function c()
        public
        pure
        returns
        (
            uint16
        )
    {
        return 5;
    }
    function d()
        public
        pure
        returns
        (
            uint16
        )
    {
        return 5;
    }
    function e()
        public
        pure
        returns
        (
            uint16
        )
    {
        return a_value | 5;
    }
    function e1()
        public
        pure
        returns
        (
            uint16
        )
    {
        return value | a_value;
    }
}
contract SemanticMutation15
{
    uint16 private constant value = 4;
    uint256 private constant a_value = 4;
    function a() public pure {}
    function c()
        public
        pure
        returns
        (
            uint16
        )
    {
        return 5;
    }
    function d()
        public
        pure
        returns
        (
            uint16
