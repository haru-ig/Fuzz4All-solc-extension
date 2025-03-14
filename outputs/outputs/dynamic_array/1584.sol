pragma solidity ^0.8.0;
contract MutatedDynamicArrays {
    event ArrayEvent(uint index, uint8[] indexed array);
    event ArrayEvent2(uint index, uint8[3] indexed array);

    function test() public{
        uint8[] memory testArray1 = new uint8[](2);
        uint8[] memory testArray2 = new uint8[](2);
        _testAndStore(testArray1);
        _testAndStore(testArray2);
        emit ArrayEvent(2, testArray2);
        emit ArrayEvent2(2, testArray2);
    }
    function _testAndStore(uint8[] memory testArray) internal{
        emit ArrayEvent(0, testArray);
    }
}
