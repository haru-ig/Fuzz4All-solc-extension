pragma solidity ^0.8.0;
contract test9
{
    bytes17[] public myArray;
    uint[] public indexArray;
    uint m1;
    uint public v1;
    function test() public
    {
        uint p1 = 85;
        uint p2 = 100;
        myArray[0] = "234";
        indexArray[0] = p1;
        (p1,p2) = (p1 + p2, p2 + p2);
        m1 = p1;
        v1 = p2;
    }
}
