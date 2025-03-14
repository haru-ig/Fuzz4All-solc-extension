pragma solidity ^0.8.0;
contract SemanticMutation17a
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
}

pragma solidity ^0.8.0;
contract SemanticMutation18a
{
    uint16 private constant value = 27;
    function a()
        public
    {
    }
    function b()
        public
    {
    }
}
contract SemanticMutation18b
{
    uint16 private constant value = 27;
    function a()
        public
        pure
    {
    }
    function b()
        public
        pure
    {
    }
}
contract SemanticMutation19b
{
    uint16 private constant value = 27;
    function a()
        public
    {
    }
    function b()
        public
        pure
    {
    }
    function c()
        public
        pure
    {
    }
}
contract SemanticMutation20a
{
    uint16 private constant value = 4;
    constructor(uint256)
        public
    {
    }
    function a()
        public
    {
    }
    function b()
        public
    {
    }
    function c()
        public
    {
    }
}
contract SemanticMutation21
{
    uint16 private
