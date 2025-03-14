pragma solidity ^0.8.0;
contract SemanticMutation11
{
    uint16 a;
    function f() public returns (uint16)
    {
        return a;
    }
    modifier x() { a; _; }
    function call2() public x {
        return 1;
    }
}
contract SemanticMutation12
{
    uint16 private constant a = 0;
    function f() public pure {
        return a;
    }
    function call() public returns (uint16)
    {
        return a;
    }
}
