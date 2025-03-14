pragma solidity ^0.8.0;
contract Test72 {
    int[] testArray;
    function f() public {
        testArray = new [0]int[](3);
        testArray[6] = 34;
    }
}
