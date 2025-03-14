pragma solidity ^0.8.0;
contract SemanticMutation9
{
     uint public constant value = 3;
    function a() public pure {}
    function b()
        public
    returns
        (
            uint
        )
    {
        return 4;
    }
}
contract SemanticMutation10
{
    uint public constant value = 3;
    function a() public pure {}
    function b()
        public
    returns
        (
            uint
        )
    {
        return 4;
    }
}
