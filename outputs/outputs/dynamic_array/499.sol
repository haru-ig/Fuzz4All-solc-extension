pragma solidity ^0.8.0;

contract test10
{
    bytes[255] public myArray;
    bytes[999] public myShortArray;
    function test() public
    {
      delete myShortArray[0];
      myShortArray[1] = 0;
      myShortArray.pop();
      myArray.pop();
    }






}
```
