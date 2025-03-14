pragma solidity ^0.8.0;
contract ArrayMutationsNonMutated {
    address[] private _addressArray;
    address[] public _lastAddress;
    uint[] public _uintArray;
    uint[] public _lastNum;
    constructor(uint[] memory _numbers, uint[] memory _numbers2) {
        uint[] memory _newArray = new uint[](_numbers.length);
        for (uint ii = 0; ii < _numbers.length; ii++) {
            _newArray[ii] = _numbers[ii];
        }
        _lastNum = _numbers;
        _array = _newArray;
        uint[] memory _lastNumbers2 = new uint[](_numbers2.length);
        for (uint ii = 0; ii < _numbers2.length; ii++) {
            _lastNumbers2[ii] = _numbers2[ii];
        }
        _lastNum = _numbers2;
        _array = _lastNumbers2;
    }
    function getlastUintArray() public view returns (uint[] memory) {
        return _array;
    }
    function getlastNum() public view returns (uint[] memory) {
        return _lastNum;
    }
    function getAddressArray() public view returns (address[] memory) {
        return _addressArray;
    }
    function getlastAddress() public view returns (address[] memory) {
        return _lastAddress;
    }
    function addAddress() public {
        _addressArray.push(address(1));
    }
    function sortAddress() public {
        address[] memory sortedAddresses = new address[](_addressArray.length);
        for (uint ii = 0; ii < _addressArray.length; ii++) {
            sortedAddresses[ii] = _addressArray[
