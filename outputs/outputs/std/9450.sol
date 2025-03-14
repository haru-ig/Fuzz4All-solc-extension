pragma solidity ^0.8.0;
contract A
{
    function foo() public pure virtual {}
    function bar() public pure virtual returns(uint)
    {
        uint x = 2;
        uint x_bar = foo().bar();
    }
}
