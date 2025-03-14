pragma solidity ^0.8.0;
contract Test58 {
    uint[] public array;
    constructor() public {
        uint[] memory array3;
        array3[(uint)array.length] = 1234;
        array[1] = 1;
    }
    event ModifyEvent(uint x);
}
