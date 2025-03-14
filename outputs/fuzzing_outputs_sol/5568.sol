pragma solidity ^0.8.0;
contract semanticallyequivalent_same
{
    function f() public pure {
        return;
    }
}
contract semanticallyequivalent_same1
{
    function f(uint r) public pure {
        return;
    }
}
contract semanticallyequivalent_same2
{
    function f(bytes memory a) public pure {
        return;
    }
}
contract semanticallyequivalent_same3
{
    function f(bytes memory) public pure {}
}
contract semanticallyequivalent_same4
{
    function f(bytes memory) public pure {}
}
contract semanticallyequivalent_same5
{
    function f() public pure {}
}
contract semanticallyequivalent_same6
{
    function f(bytes memory) public pure {}
}
contract semanticallyequivalent_same7
{
    function f(bytes memory) public pure {}
}
