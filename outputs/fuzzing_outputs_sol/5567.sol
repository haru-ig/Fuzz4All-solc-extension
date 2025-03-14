pragma solidity ^0.8.0;
contract semanticallyequivalent_sem
{
    function f() public pure {
        return;
    }
}
contract semanticallyequivalent_semp1
{
    function f(uint r) public pure {
        return;
    }
}
contract semanticallyequivalent_semp2
{
    function f(bytes memory a) public pure {
        return;
    }
}
contract semanticallyequivalent_semp3
{
    function f(bytes memory) public pure {}
}
contract semanticallyequivalent_semp4
{
    function f(bytes memory) public pure {}
}
contract semanticallyequivalent_semp5
{
    function f() public pure {}
}
contract semanticallyequivalent_semp6
{
    function f(bytes memory) public pure {}
}
contract semanticallyequivalent_semp7
{
    function f(bytes memory) public pure {}
}
