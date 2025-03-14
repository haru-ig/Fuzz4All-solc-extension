pragma solidity ^0.8.0;


contract Array {

    uint32 internal data;

    uint32 internal length;


    constructor(uint32[] memory arrayData)  {
        if (arrayData.length > 0) {
            data = arrayData[0];
            length = arrayData.length;
        } else {
            data = uint32(0);
            length = 0;
        }
    }


    function update(uint32[] memory arrayData)  public  {
        data = arrayData.length > 0? arrayData[data] : uint32(0);
        length = arrayData.length;
    }


    function get(uint32 index) public view returns(uint32 result) {
        return index < length? data[index] : uint32(0);
    }


    function getEqual(uint32 index, uint32 expectedValue) public view returns(bool) {
        return get(index) == expectedValue;
    }


    function store(uint32 index, uint32 value) public returns(uint32 result) {
        result = get(index);
        set(index, value);
    }


    function set(uint32 index, uint32 value) public  {
        uint32[] memory oldData = new uint32[](length);
        for (uint32 i = 0; i < index; i++) {
            oldData[i] = get(i);
        }
        for (uint32 i = 0; i < length - index; i++) {
            oldData[i + index] = get(i + index + 1);
        }
        oldData[length - index - 1] = value;
        update(oldData);
    }

    /** @dev Returns the number of elements in the current array
