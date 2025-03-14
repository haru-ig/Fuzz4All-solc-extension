pragma solidity ^0.8.0;
interface myInterface {
    bytes32 public myDataField;
    function getData() public view returns(bytes32);
    function setNewData(bytes32 _newDataField) public;
}

pragma solidity ^0.8.0;
contract myContract is myInterface {
    bytes32 myDataField;
    constructor() {
        myDataFiel = "this is a test";
    }
    function getData() public view returns(bytes32) {
        return myDataField;
    }
    function setNewData(bytes32 _newDataField) public {
        myDataField = _newDataField;
    }
}
