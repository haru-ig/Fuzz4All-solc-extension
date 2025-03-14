pragma solidity ^0.8.0;
contract SemanticMutation7
{
    function d() public pure
    {
        b();
        b();
    }
    function c() public pure
    {
        a();
    }
}
