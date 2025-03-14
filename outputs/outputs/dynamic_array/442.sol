pragma solidity ^0.8.0;
contract test7
{
    uint myUint;
    bytes myBytes;
    string myString;
    function test() public {
        uint data;
        myUint += 1;
        data = myUint - myUint;
        data = myBytes[1];
        data = myString[1];
    }
}
