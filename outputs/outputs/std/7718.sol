pragma solidity ^0.8.0;
contract ImmutableArray {
    uint8[] immutable private immutableData;
    constructor(uint8[] memory data_){
    immutableData = data_;
    }
    function getData() public view returns (uint8[] memory ) {
    emit emitEvent("getData");
        data = immutableData;
        return data;
    }
    event emitEvent(string message);
}
