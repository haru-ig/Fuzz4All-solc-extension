pragma solidity ^0.8.0;
interface M
{
    function bar() external returns (bool x);
}

contract Test
{
    I internal _interface;
    constructor (I input, bool _foo)
    {
        require(_foo);
        _interface = input;
    }
    using Interfaces for I;
    function method() public returns (bool)
    {
        uint i=0x1234;
        uint arraySize;
        I(_interface.foo()).foo();
        i.foo();
        i.foo().foo();
        i.foo().foo().foo();
        i.foo().foo().foo().foo().foo();
        i.foo().foo().foo().foo().foo().foo().foo();

        i.foo().foo().foo().foo().foo().foo().foo().foo().foo();
        i.foo().foo().foo().foo().foo().foo().foo().foo().foo().foo();
        i.foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo();
        i.foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo();
        i.foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo();
        i.foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo();
        i.foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo();
        i.foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo();
        i.foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo();
        i.foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo();


        i.foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo().foo();
         i.
