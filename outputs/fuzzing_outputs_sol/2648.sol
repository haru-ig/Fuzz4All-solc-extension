pragma solidity ^0.8.0;
contract myContract {
    bytes32 public myDataField;
    bytes32 public mySecondDataField;
    constructor() {
        myDataField = "this is a test";
        mySecondDataField = "this is a second test";
    }
    function getData() public view returns(bytes32, bytes32){
        bytes32 _data = myDataField;
        bytes32 _secondData = mySecondDataField;
        return (_data,_secondData);
    }
    function setData(bytes32 _newData, bytes32 _newSecondData) external {
        myDataField = _newData;
        mySecondDataField = _newSecondData;
    }
    receive() external payable {
        withdraw(msg.value);
    }
}
