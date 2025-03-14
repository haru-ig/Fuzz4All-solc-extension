pragma solidity ^0.8.0;
contract test7
{
    bytes[] public myArray;
    function test() public
    {
        myArray[1] = "";
        myArray[1].push("1");
    }
}

pragma solidity ^0.8.0;
contract test6
{
    bytes[] public myArray;
    function test() public
    {
        myArray.push("809");
        myArray[3] = "10";
    }
}

pragma solidity ^0.8.0;
contract test5
{
    uint8[] public myArray;
    function test() public
    {
        myArray[1] = 0;
        myArray[0].push(1);
        myArray[2] = 1;
        myArray[1][] = 2;
        myArray.push(3);
    }
}

pragma solidity ^0.8.0;
contract test4
{
    uint8[] public myArray;
    function test() public
    {
        myArray.push(2);
        myArray.push("10");
        myArray[0] = "234";
        myArray.push("1234");
    }
}

pragma solidity ^0.8.0;
contract test3
{
    uint8[] public myArray;
    function test() public
    {
        myArray[0].push(10);
        myArray.push(15);
        myArray.push(1);
        myArray.push("10");
        myArray = new uint8[](15);
    }
}
