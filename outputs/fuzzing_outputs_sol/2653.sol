pragma solidity ^0.8.0;
contract myContract is myContract {
    bytes32 public myData;
    bytes32 public mySecondData;
    bytes32 public myThirdData;
    bytes32 public myFourthData;
    bytes32 public myFifthData;
    mapping (bytes32 => bytes32) public mySecondDataSet;
    mapping (bytes32 => mapping (bytes32 => bytes32)) public myThirdDataSet;
    constructor() {
        if(myData== "") {
            myData = "data";
        }
        if(mySecondData == "") {
            mySecondData = "second data";
        }
        if(myThirdData == "") {
            myThirdData = "third data";
        }
        if(myFourthData == "") {
            myFourthData = "4th data";
        }
        if(myFifthData == "") {
            myFifthData = "5th data";
        }
    }
    function getData() public view returns(bytes32, bytes32, bytes32){
        bytes32 _data = myData;
        bytes32 _secondData = mySecondData;
        bytes32 _thirdData = myThirdData;
        bytes32 _fourthData = myFourthData;
        bytes32 _fifthData = myFifthData;
        return (_data,_secondData,_thirdData);
    }
    function setData(bytes32 _newData, bytes32 _newSecondData, bytes32 _newThirdData) external {
        myData = _newData;
        mySecondData = _newSecondData;
        myThirdData = _newThirdData;
    }
}
