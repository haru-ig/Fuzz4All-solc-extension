pragma solidity ^0.8.0;
contract AssignmentModulation {
    uint8 value1;
    uint16 value2;
    uint32 value3;
    uint64 value4;
    uint8 _value8;
    uint16 _value16;
    uint32 _value32;
    uint64 _value64;
    bytes32 _value32Bytes;

    uint value4Value;
    string _stringValue;

    bool isTrue;

    bool isFalse;
    function getBooleanValue() public view returns (bool retVal) {
        return isTrue;
    }
    function setReturnValue(bool inputValue) public {
        returnValue = inputValue;
    }
    function updateBoolean(bool inputValue) public {
        isTrue = inputValue;
    }
    function updateBoolean2(bool newBooleanValue) public {
        isTrue = newBooleanValue;
    }
    function getUInt8() public view returns (uint8 retVal) {
        return _value8;
    }
    function getUInt16() public view returns (uint16 retVal) {
        return _value16;
    }
    function getUInt32() public view returns (uint32 retVal) {
        return _value32;
    }
    function getUInt64() public view returns (uint64 retVal) {
        return _value64;
    }
    function getBytes32() public view returns (bytes32 retVal) {
        return _value32Bytes;
    }
    function getAddress() public view returns (address retVal) {
        return address(this);
    }
    function getBytes(uint index) public view returns (bytes retVal) {
        bytes memory empty;
        empty[index] =
