pragma solidity ^0.8.0;
contract SemanticMutation13
{
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

contract SemanticMutationErrors
{
    function a()
        public
    {


        5;

        SemanticMutation9();

    }
    function b()
        public
    {
        5;

        SemanticMutation9();
    }
}
