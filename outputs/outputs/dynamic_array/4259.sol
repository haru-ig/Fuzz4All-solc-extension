pragma solidity ^0.8.0;
contract G {
    address x;
    uint8[] array;
    uint8[] mutatedArray;
    constructor() public {
        array = [1, 2, 3];
        array = mutatedArray;
        x = address(0);
    }
}
