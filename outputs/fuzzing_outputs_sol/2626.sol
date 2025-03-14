pragma solidity ^0.8.0;
contract myContract {
    uint public constant NOPATH = 0;
    bytes32 myDataField;
    constructor() {
        myDataField = "this is a test";
    }
    function getData() public view returns(uint) {
        return  myDataField;
    }
}
