pragma solidity ^0.8.0;
contract test7
{
    address x;
    function f() public pure returns(uint)
    {
        return (uint(myArray[0]));
    }
    uint[] public myArray;
}

pragma solidity ^0.8.0;
contract test7
{
    address x;
    function test() public pure returns(uint)
    {
        myArray[0] = 100;
        return 1;
    }
    uint[] public myArray;
}
