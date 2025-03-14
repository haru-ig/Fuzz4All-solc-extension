pragma solidity ^0.8.0;
contract test11
{
    address x;
    bytes[] public myArray;
    function test() public
    {
      myArray.pop();
      myArray.push(0);
    }
}
