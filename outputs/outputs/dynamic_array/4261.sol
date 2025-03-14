pragma solidity ^0.8.0;
contract H {
    address x;
    uint8[] array;
    uint8[] mutatedArray;
    constructor() public {
        array = [3, 2, 1];
        uint8[] storageCopy = array;
        mutatedArray = storageCopy;
        x = address(0);
    }
}
