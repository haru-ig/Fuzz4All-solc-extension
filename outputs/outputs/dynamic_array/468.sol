pragma solidity ^0.8.0;
contract test93
{
    address x;
    bytes[] myArray;
    function test93() public
    {
        myArray = new bytes[](1);
    }
    function test94() public
    {
        myArray.push("Hello World");
    }
}
