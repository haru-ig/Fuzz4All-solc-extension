pragma solidity ^0.8.0;
contract test7
{
    bytes[] public myArray;
    uint m1 = 555;
    uint public v;
    function test() public
    {
        myArray.push("new");
        myArray[0] = "b";
        m1 = 100;
        v = 70;
    }
}
