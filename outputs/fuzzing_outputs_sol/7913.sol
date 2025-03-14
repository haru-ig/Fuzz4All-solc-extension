pragma solidity ^0.8.0;
contract Caller
{

    function fallback() public payable
    {
    }

    receive() public payable
    {
    }
}


contract Caller
{
    function fallback() public payable
    {
    }

    function doSomething() public
    {
        doSomethingInternal();
    }

    function doSomethingInternal() public {}
}

pragma solidity ^0.8.0;
contract Caller
{

    fallback() public payable
    {
    }

    receive() public payable
    {
    }

    function doSomething() public
    {
        doSomethingInternal();
    }

    function doSomethingInternal() public
    {
    }
}
