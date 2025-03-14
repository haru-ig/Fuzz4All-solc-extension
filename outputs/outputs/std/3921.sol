pragma solidity ^0.8.0;
library MyArray {
    function myArray(uint64 a) public pure returns(uint64[] memory) {
    }
}
interface IUser {
    function setArrayValue(uint64[] memory a) public;
    function setArrayValue_call(uint64[] memory a) payable public;
    function getArrayValue(uint64[] memory a) public returns(uint64[] memory);
    function getArrayValue_call(uint64[] memory a) public view returns(uint64[] memory);
    function setSignedValue(int256 a) public;
    function setSignedValue_call(int256 a) public payable;
    function getSignedValue(int256 a) public returns(int256);
    function getSignedValue_call(int256 a) public view returns(int256);
    function setUnsignedValue(uint256 a) public;
    function setUnsignedValue_call(uint256 a) public payable;
    function getUnsignedValue(uint256 a) public returns(uint256);
    function getUnsignedValue_call(uint256 a) public view returns(uint256);
    function setBytesValue(bytes memory a) public;
    function setBytesValue_call(bytes memory a) public payable;
    function getBytesValue(bytes memory a) public returns(bytes memory);
    function getBytesValue_call(bytes memory a) public view returns(bytes memory);
}
