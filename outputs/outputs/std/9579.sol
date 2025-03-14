pragma solidity ^0.8.0;
contract MultiplyBy2x {
    uint256[2] public myArray;
    constructor() {
        myArray[0] = 1;
        myArray[1] = 1;
    }
    function multiplyBy2() public {
        myArray = myArray.multiply(2);
    }
}
