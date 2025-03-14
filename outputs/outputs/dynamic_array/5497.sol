pragma solidity ^0.8.0;
contract Test62 {
    uint[3] public data;
    constructor() public {
        data[2].value = 1;
        emit ModifyEvent(data[1].value);
    }
    event ModifyEvent(uint x);
}
