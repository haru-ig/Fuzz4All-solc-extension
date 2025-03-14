pragma solidity ^0.8.0;
contract SemanticMutation7
{
     uint public constant value = 3;
    function a() public pure {}
    function b()
        public
        pure
        returns
        (
            uint
        )
    {
        return 4;
    }
}
contract SemanticMutation8
{
    uint public constant value = 3;
    function a() public pure
    {}
    function b()
        public
        pure
        returns
        (
            uint
        )
    {
        return 4;
    }
}
