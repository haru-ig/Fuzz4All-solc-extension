pragma solidity ^0.8.0;
contract test10
{
    bytes[] public myArray;
    function test() public
    {
        myArray[0] = "5";
        myArray[0] = "234";
        myArray.push("234");
    }
}
