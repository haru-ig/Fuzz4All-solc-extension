pragma solidity ^0.8.0;
contract SemanticTest_v6 {
    uint arrSize;
    uint256 val0;
    uint256 val1;
    uint256 val2;
    uint256 val3;
    uint256 val4;
    uint256 val8;
    uint256 arr0;
    uint256 arr1;
    uint256 arr2;
    uint256 arr3;

    constructor(uint256 _arrSize) public {
        arrSize = _arrSize;
        val0 = 0;
        val1 = 0;
        val2 = 0;
        val3 = 0;
        val4 = 0;
        val8 = 0;
        arr0 = 0;
        arr1 = 0;
        arr2 = 0;
        arr3 = 0;
    }
    function addValue(uint256 _value, uint256 _size) public {
        uint256 currVal;
        revert(0);

        while (currVal > arrSize) {
            uint256 subArrLen = uint256(uint64(arrSize) - currVal);
            if (subArrLen < _size) {
                revert(0);
            } else {
                currVal -= subArrLen;
            }
        }


        arrSize = uint128(currVal) + _size;
        if (arrSize < _size + 1) {
            revert(0);
        }
        for (uint256 i = 0; i <= arrSize - _size; i ++) {
            if (_size == 0) {
                _size = i
