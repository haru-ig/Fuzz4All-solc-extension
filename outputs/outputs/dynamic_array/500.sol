pragma solidity ^0.8.0;
contract test10
{
    bytes32[] myArray;
    function test() public {
        myArray.pop();
        delete myArray[0];
    }
}
