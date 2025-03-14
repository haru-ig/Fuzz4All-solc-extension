pragma solidity ^0.8.0;
contract semanticallyequivalent2
{
    uint public x = 1;
    function f() public pure
    {
    f();
    }
}
