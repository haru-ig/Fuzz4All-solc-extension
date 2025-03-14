pragma solidity ^0.8.0;
contract test11
{
    address public x;
    function test11() public {
        x = address(this);
        myArray = new bytes[](1);
        myArray = new bytes[](2);
        myArray = new bytes[](4);
        myOtherArray[0] = "hello";
        myOtherArray.push(this);
        myArray = new bytes[](7);
        myArray[7] = myOtherArray[0];
    }
}
