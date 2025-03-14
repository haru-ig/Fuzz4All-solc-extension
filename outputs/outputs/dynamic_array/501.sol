pragma solidity ^0.8.0;
contract test10
{
    bytes[] public myArray;
    function test() public
    {
        myArray[0] = "test";
        delete myArray[3];
        delete myArray[0];
        myArray[3] = "new";
    }
}
pragma solidity ^0.8.0;
contract test10
{
    bytes[] public myArray;
    function test() public
    {
        myArray[0] = "test";
        delete myArray[0];
        myArray.pop();
    }
}
