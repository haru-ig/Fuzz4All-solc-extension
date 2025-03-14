pragma solidity ^0.8.0;
contract myContract {
    bytes32 public myDataField;
    mapping (address => bytes32) private myMapping;
    constructor() {
        myDataField = "this is a test";
    }
    function getData() public view returns(bytes32) {
        if(myMapping[msg.sender]!= "") {
            return myMapping[msg.sender];
        } else {
            return "invalid";
        }
    }

}
