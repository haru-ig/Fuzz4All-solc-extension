pragma solidity ^0.8.0;
contract test9
{
    bytes24[][] public myArray;
    bytes24[] public myArray0;
    uint m1 = 555;
    uint public v;
    function test() public
    {
        myArray[0][0] = "1234";

        myArray[1][1] = "45678";
        m1 = 100;
        v = 70;
    }
}
