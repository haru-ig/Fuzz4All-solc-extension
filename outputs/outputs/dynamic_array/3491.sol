pragma solidity ^0.8.0;

contract A {
    uint256[][] [] array;
    function multiply() public {
        array[0][0][0] *= 1;
        array[0][0][0] *= 1;
        array[0][2][0] *= 1;
        array[2][2][0] *= 1;
    }
}
