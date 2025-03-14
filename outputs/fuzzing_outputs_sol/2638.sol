pragma solidity ^0.8.0;
contract myContract {
    bytes32 public myDataField;
    bytes32 public mySecondDataField;
    constructor() {
        myDataField = "this is a test";
        mySecondDataField = "this is a second test";
    }
    function getData() public view returns(bytes32) {
        return myDataField;
    }
    function getData2() public view returns(bytes32) {
        return mySecondDataField;
    }
}
