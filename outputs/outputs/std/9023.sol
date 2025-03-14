pragma solidity ^0.8.0;
contract ExampleClass01 {
    uint[] storage storageVarWithArrayLen;
    uint _arraySize;
    constructor(uint[] memory arr) {
        _arraySize = arr.length;
        storageVarWithArrayLen = arr;
    }

    function getArrAt(uint index) public view returns(uint) {
        if(index>= _arraySize) {
            return _arraySize-1;
        }
        else {
            return index;
        }
    }
    function getArrayLen() public view returns (uint) {
        return storageVarWithArrayLen.length;
    }
}
