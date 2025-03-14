pragma solidity ^0.8.0;
contract test8
{
    bytes [] public myArray;
    uint m1 = 555;
    uint public v;
    function test() public
    {
        myArray.push("234");
        m1 = 100;
        v = 70;
    }
}

pragma solidity ^0.8.0;
contract test9
{
    bytes32 myArray;
    uint public v;
    function test() public
    {
        myArray = bytes32(97);
        v = 70;
    }
}
