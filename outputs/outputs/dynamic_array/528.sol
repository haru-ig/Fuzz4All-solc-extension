pragma solidity ^0.8.0;
contract test9
{
    bytes24[] public myArray;
    uint public v1;
    function test() public
    {
        uint m2 = 101;
        uint n2 = 100;
        myArray[0] = "234";
        m2 = m2 * 2;
        n2 = n2 + 100;
        m1 = m2;
        v1 = n2;
        myArray[5] = "[3, -1]";
    }

    function f(bytes24[] memory data, uint a) public
    {
        data[0] = "1";
        data[1] = "2";
        data[255] = "c";
        data[5] = "[3, -1]";
        a = 5;
        data[1] = data[5];

        data.push("d");
        data[1] = "4";
    }
}
