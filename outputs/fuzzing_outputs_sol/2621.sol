pragma solidity ^0.8.0;
contract myContract {
    bytes memory public myDataField;
    constructor() {
        myDataField = hex'00';
    }
    function getData() public view returns (bytes) {
        return memory.getData();
    }
}
