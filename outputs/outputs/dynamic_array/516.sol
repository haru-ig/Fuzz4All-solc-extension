pragma solidity ^0.8.0;
contract test9
{
    bytes17[] public myArray;
    mapping(uint => bytes17) public myMap;
    uint m1 = 555;
    uint public v;
    function test() public
    {
        myArray.push("70");
        myMap[0] = "234";
        m1 = 100;
        v = 70;
    }
}
