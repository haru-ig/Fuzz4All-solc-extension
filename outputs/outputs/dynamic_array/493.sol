pragma solidity ^0.8.0;
contract test10
{
    address x;
    bytes[] public myArray;

    function test() public
    {
      delete myArray[0];
      myArray.pop();
    }
}
