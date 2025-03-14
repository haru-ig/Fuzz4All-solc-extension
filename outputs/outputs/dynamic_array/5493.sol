pragma solidity ^0.8.0;
contract Test58 {
    uint[] public array;
    constructor() public {
        array[1] = 1;
        emit ModifyEvent(array[2]);
    }

    event ModifyEvent(uint x);
}
