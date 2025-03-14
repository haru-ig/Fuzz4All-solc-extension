pragma solidity ^0.8.0;
interface SomeInterface {
    function doSomething() public;
}
interface AnotherInterface {
    function doSomethingElse() public;
}
contract Example
{
    SomeInterface public someInterface;
    AnotherInterface public anotherInterface;
    function doSomething() public
    {


        doSomethingElse();
    }
    function doSomethingElse() public
    {


        someInterface.doSomething();
    }
}
