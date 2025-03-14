pragma solidity ^0.8.0;
contract Solidity5 {
    function myFunction() public {
        uint[] memory myArray = new uint[](5);
        myArray[4] = 1;
        myArray[3] = 2;
        myArray[2] = 3;
        myArray[1] = 4;
        myArray[0] = 5;
        uint a = myArray[4];
    }
}
