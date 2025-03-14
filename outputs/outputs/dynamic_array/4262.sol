pragma solidity ^0.8.0;
contract G {
    uint8[] array;
    uint8[] mutatedArray;
    uint8[3] array2;
    uint8[3] mutatedArray2;
    uint8[3] array3;
    uint8[3] mutatedArray3;
    uint8[3] array4;
    uint8[3] mutatedArray4;
    constructor() public {
        array = [1, 2, 3];
        array2 = [3, 2, 1, 4];
        array3 = [4, 3, 2, 1];
        array4 = [5, 4, 3, 2];
        array = mutatedArray;
        mutatedArray2 = mutatedArray2;
        mutatedArray3 = mutatedArray3;
        mutatedArray4 = mutatedArray4;
        x = address(0);
    }
}
