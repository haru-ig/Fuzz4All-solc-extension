pragma solidity ^0.8.0;
contract test9
{
    uint[] public myArray;
    uint m1;
    uint public v1;
    function test() public
    {
        uint m2 = 101;
        uint n2 = 100;
        myArray[0] = 234;
        m2 = m2 * 2;
        myArray[1] = m2 + 100;
        m1 = m2;
        myArray.length > 1? myArray[0] = 234 : m1 = 101;
        v1 = n2;
    }
}
