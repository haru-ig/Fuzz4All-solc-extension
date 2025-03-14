pragma solidity ^0.8.0;
contract MutateWithString {
    mapping(uint => string) private _array;
    function createArray() public {
        uint len = _array.length;
        for(uint i = 0; i < len; i++){
            _array[i] = string(i);
        }
    }
    function modifyArray() public {
        uint len = _array.length;
        for(uint i = 0; i < len; i++){
            _array[i] = string(i + 1);
        }
    }
}
