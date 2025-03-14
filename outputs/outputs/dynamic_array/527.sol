pragma solidity ^0.8.0;
contract test9
{
    bytes32[] public myArray;
    uint m1;
    uint public v1;

    function test() public
    {
        uint m2 = 101;
        uint n2 = 100;
        myArray[0] = 0x696e69;
        m2 = m2 + m2;
        n2 = n2 + n2;
        m1 = m2;
        v1 = n2;
    }
}
