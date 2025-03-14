pragma solidity ^0.8.0;
contract A {
    uint256[] public bArray;
    uint256[] public bArray2;
    constructor() public {
        bArray.push(1);
        bArray.push(2);
        bArray2.push(3);
        bArray2.push(4);
        bArray2.push(5);
        bArray[3]=5;
        emit A();
    }
}
