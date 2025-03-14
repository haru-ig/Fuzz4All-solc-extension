pragma solidity ^0.8.0;
contract MutatedContract {
    bytes32 public myData;
    bytes32 public mySecondData;
    bytes32 public myThirdData;
    bytes32 public myFourthData;
    bytes32 public myFifthData;
    constructor() {
        myData = "data";
        mySecondData = "second data";
        myThirdData = "third data";
		myFourthData = "4th data";
		myFifthData = "5th data";
    }
    function getData() public view returns(bytes32, bytes32, bytes32){
        bytes32 _data = myData;
        bytes32 _secondData = mySecondData;
        bytes32 _thirdData = myThirdData;
		bytes32 _fourthData = myFourthData;
		bytes32 _fifthData = myFifthData;
		return (bytes32(uint256(_data)+256), bytes32(uint256(uint256(_secondData))+256), bytes32(uint256(uint256(_thirdData))*256));
    }
    function setData(uint8 _amount, bytes32 _newSecondData, bytes32 _newThirdData) external {
		myData = bytes32 (uint256(uint256(myData) + uint256(_amount)));
		mySecondData = bytes32 (uint256(uint256(mySecondData) + uint256(_amount/2)));
		myThirdData = bytes32 (uint256(uint256(myThirdData) + uint256((uint256(uint256(_newThirdData))*_amount))));
		myFour
