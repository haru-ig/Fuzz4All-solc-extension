pragma solidity ^0.8.0;
contract DataStorage{


bytes[] memory dataArray;

Mockable mockContract;

address[] memory calldataDataArray;

uint internal mockDataArraySize = 0;
function setLength(uint newDataArrayLength) public {
mockDataArraySize = newDataArrayLength;
}
function resize(uint newSize) public {
if( newSize > mockDataArraySize ) {
  calldataDataArray.length = 0;
  calldataDataArray.length = newSize;
}
 }
 function getDataAtPosition(uint positionInArray) public view returns(bytes memory) {
 require(positionInArray < mockDataArraySize);
 return dataArray[positionInArray];
 }
 function getDataByAddress(address indexElement) public view returns(bytes memory) {
 require(calldataDataArray[indexElement]!= 0x00);
 return web3.eth.abi.encodePacked("mock", calldataDataArray[indexElement]).decode("bytes memory")[2];
 }
}
