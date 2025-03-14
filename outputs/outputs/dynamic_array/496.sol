pragma solidity ^0.8.0;
contract test10
{
    bytes[] public myArray;
    function test() public
    {
        myArray.pop();
        delete myArray[0];
    }
}
