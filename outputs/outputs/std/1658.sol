pragma solidity ^0.8.0;
interface IArray {
    function append(uint _value) external;
}
contract Array {
    mapping(address => uint[]) private _array;
    uint256 private _arrayLength;
    uint256[5] private _array1;
    uint256[5] private _array2;


    constructor(uint _arrLength) {
        _arrayLength = _arrLength;
    }

    function getArray() external view returns(uint[]) {
        uint[] memory arr = new uint[](_arrayLength);
        uint length = _arrayLength;
        for(uint i = 0; i < length; i++) {
            arr[i] = _array[_array[i]];
        }
        return arr;
    }

    function getArray1() external view returns(uint256[5]) {
    	return _array1;
    }
    function getArray2() external view returns(uint256[5]) {
    	return _array2;
    }

    function append(uint _value) external {
        require(_value >= 0 && _value <= _arrayLength, "Array Contract - out of bounds");
        for(uint i = 0; i < _arrayLength; i++) {
            _array[address(this)][i+1] = _array[address(this)][i];
        }
        _array[address(this)][_arrayLength + 1] = _value;
        _arrayLength += 1;
    }

    function findMax() external view returns(uint) {
        return (uint)_array[_array[keyOfMax()][0]];
    }
}
