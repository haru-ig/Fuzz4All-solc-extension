pragma solidity ^0.8.0;
contract semanticallyequivalent_semut1
{
    function f() public pure {
        return;
    }
}
contract semanticallyequivalent_semut2
{
    function f(uint r) public pure {
        return;
    }
}
contract semanticallyequivalent_semut3
{
    function f(bytes memory a) public pure {
        return;
    }
}
contract semanticallyequivalent_semut4
{
    function f(bytes memory) public pure {}
}
contract semanticallyequivalent_semut5
{
    function f() public pure {}
}
contract semanticallyequivalent_semut6
{
    function f(bytes memory) public pure {}
}
contract semanticallyequivalent_semut7
{

    function f(bytes memory) public pure {}
}
