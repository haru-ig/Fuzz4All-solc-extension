pragma solidity ^0.8.0;
contract Caller {
    bytes32 public myDataField;
    constructor() {
        myDataField = "this is a test";
    }
    function getData() public payable view returns(bytes32) {
        return myDataField;
    }
    fallback() external payable {
    }
}
