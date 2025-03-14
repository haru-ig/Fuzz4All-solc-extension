pragma solidity ^0.8.0;
contract SemanticMutation13
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
        if (5 == 4) {
            return 6;
        }
        return 1;
    }
}
contract SemanticMutation6
{
    uint16 private constant value = 6;
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
        if (5 == 4) {
            return 6;
        }
        return 1;
    }
}
contract SemanticMutation7
{
    uint16 private constant value = value + uint16(-3);
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
        if (5 == 4) {
            return 6;
        }
        return 1;
    }
}
contract SemanticMutation8
{
    uint16 private constant value = value + uint16(-3);
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
        if (5 == 4) {
            return 6;
        }
        return 1;
    }
    function e() public pure
    {
        if (5 == 6) {
            return 8;
        }
        return 2;
    }
}
contract SemanticMutation9
{
    uint16 private constant value = value + uint16(-3);

    uint16 public val;

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
        if (5 == 4) {
            return 6;
        }
        return 1;
    }
}
contract SemanticMutation10
{
