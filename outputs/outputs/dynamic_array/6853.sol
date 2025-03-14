pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Test
{
    int private myArray;
    function setMyArray(int memory newArray) public
    {
        myArray = newArray;
    }
    function getMyArray() public view returns(int)
    {
        return myArray;
    }
}
