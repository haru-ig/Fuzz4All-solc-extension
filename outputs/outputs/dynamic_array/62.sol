pragma solidity ^0.8.0;
contract A {
    uint256[] public bArray;
    constructor() {
        bArray.push(1);
        bArray.push(2);
        bArray.push(3);
        bArray[10] = 20;
        bArray2[7] = 20;
    }
}
