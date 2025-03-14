pragma solidity ^0.8.0;

contract test11
{
    address x;
    bytes[] public myArray;
    bytes[] public myOtherArray;
    function test(bytes[] memory b) public returns (bytes[])
    {
        myArray = b;
        myOtherArray = b;

        return [myOtherArray];
    }
}
pragma solidity ^0.8.0;

contract test12
{
    address x;
    bytes[] public myArray;
    bytes[] public myOtherArray;
    function test(bytes[] calldata b) public returns (bytes[])
    {
        myArray = b;
        myOtherArray = b;

        return [myOtherArray];
    }



}
