pragma solidity ^0.8.0;
library myContract {
    uint8 public dummyDataField;
    function getData() public view returns(uint8) {
        return dummyDataField;
    }
}






contract Example {
    bytes32 constant myDataField = "this is a test";
    function getData2() public view returns(bytes32) {
        return myDataField;
    }
}
