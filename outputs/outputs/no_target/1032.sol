pragma solidity ^0.8.0;
contract SemanticMutation11
{
    uint16 private constant value = 5;
    function a()
        public
        pure
        returns
        (
            uint16
        )
    {
        return value;
    }
    function b()
        public
        pure
        returns
        (
            uint16
        )
    {
        return value;
    }
}
contract SemanticMutation12
{
    uint16 private constant value = 6;
    function a()
        public
        pure
        returns
        (
            uint16
        )
    {
        return value;
    }
    function b()
        public
        pure
        returns
        (
            uint16
        )
    {
        return value;
    }
}
contract SemanticMutation13
{
    uint16 private constant value = 9;
    function a()
        public
        pure
        returns
        (
            uint16
        )
    {
        return value;
    }
    function b()
        public
        pure
        returns
        (
            uint16
        )
    {
        return value;
    }
}
contract SemanticMutation14
{
    uint32 private constant value = 13;
    function a()
        public
        pure
        returns
        (
            uint16
        )
    {
        return value;
    }
    function b()
        public
        pure
        returns
        (
            uint16
        )
    {
        return value;
    }
}
contract SemanticMutation15
{
    uint32 private constant value = 19;
    function a()
        public
        pure
        returns
        (
            uint16
        )
    {
        return value;
    }
    function b()
        public
        pure
        returns
        (
            uint16
        )
    {
        return value;
    }
}
contract SemanticMutation16
{
    uint64 private constant value = 27;
    function a()
        public
        pure
        returns
        (
            uint16
        )
    {
        return value;
    }
    function b()
        public
        pure
        returns
        (
            uint16
        )
    {
        return value;
    }
}
contract SemanticMutation17
{
    uint64 private constant value = 37;
    function a()
        public
        pure
        returns
        (
            uint16
        )
    {
        return value;
    }
    function b()
        public
        pure
        returns
        (
            uint16
        )
    {
        return value;
    }
}
contract SemanticMutation18
{
    function a()
        public
        pure
        returns
        (
            uint256
        )
    {
        uint16 c = 48;
        uint16 d;
        if (c <= 5
