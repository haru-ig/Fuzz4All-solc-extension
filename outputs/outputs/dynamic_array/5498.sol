pragma solidity ^0.8.0;
contract Test57 {
    uint[] public array;
    constructor() public payable {
        array[2] = 1;
        array[1] = array[2];
        array[1] = array[2];

        uint[] memory bArray = [1, 2];
        array[1] = bArray[1];
        emit ModifyEvent(array[1]);
    }
    event ModifyEvent(uint x);
}
