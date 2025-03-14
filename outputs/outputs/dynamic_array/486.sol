pragma solidity ^0.8.0;
contract test10
{
    address x;
    bytes[] public myArray;
    bytes[] public myOtherArray;

    function test(uint8 myLength, uint8 myLength2) public
    {
        require(myLength > myLength2, "Something goes wrong");

        x = address(this);
        bytes[] memory myOtherArray = new bytes[2];
        for (uint i = 0; i < myLength; ++i) {
            myArray.push(42);
        }

        myArray[myLength] = x;
        myOtherArray[myLength2] = x;

    }
}
