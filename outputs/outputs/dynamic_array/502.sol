pragma solidity ^0.8.0;
contract test11
{
    bytes memory public myArray;
    function test() public
    {
        myArray[0][2] = 'x';
    }
}
