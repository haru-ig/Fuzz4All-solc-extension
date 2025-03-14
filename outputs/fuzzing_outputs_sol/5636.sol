pragma solidity ^0.8.0;
contract semanticallyequivalent5
{
    uint public x = 1;
    function f() public pure
    {
        x = 0;
    }


    function f() public pure {
        f();
    }
}
