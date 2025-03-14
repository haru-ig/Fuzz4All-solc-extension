pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract SemanticMutation9
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
contract SemanticMutation10
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
