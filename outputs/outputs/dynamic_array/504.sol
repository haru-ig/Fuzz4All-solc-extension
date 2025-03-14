pragma solidity ^0.8.0;
contract test9
{
    bytes[] public myArray;
    function test() public
    {
        myArray.push("234");
        myArray[0] = "5";
    }
}
