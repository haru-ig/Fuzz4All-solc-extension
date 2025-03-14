pragma solidity ^0.8.0;
contract myContract {
    bytes32 public myDataField;
    constructor() {
        myDataField = "this is a test";
    }


    assembly {
    mstore(0x0, myDataField)
    }
    function getData() public view returns(bytes32) {
        return myDataField;
    }
}
