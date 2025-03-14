pragma solidity ^0.8.0;
contract SemanticsEquivalentChanges {
}
contract Memory {
    array uint32 _memoryData;
    event Request(uint32 element);
    constructor() {
        _memoryData.push(3);
        _memoryData.push(4);
        _memoryData.push(5);
        _memoryData.push(6);
    }
    function read() public view returns(uint32 x){
        return _memoryData[x];
    }
    function write(uint32 element) public {
        _memoryData[6] = element;
        emit Request(element);
    }
    function request() public returns(uint32 x){
        return _memoryData[6];
    }
    function request2() public {
        memory.write(1);
    }
}
contract Array {
    uint32[] _arrayData;
    event Request(uint32 element);
    constructor(uint32[] memoryData) {
        _arrayData = memoryData;
        _arrayData.push(3);
        _arrayData.push(4);
        _arrayData.push(5);
    }
    function min() public view returns(uint32 min) {
        if(_arrayData.length > 1) {
            return _arrayData[1];
        }
        return _arrayData[0];
    }
    function max() public view returns(uint32 max) {
        if(_arrayData.length > 0) {
            return _arrayData[_arrayData.length-1];
        }
        return _arrayData[0];
    }
    function sum() public view returns(uint32 sum) {
        for(uint i=0; i<_arrayData.length; i++) {
            sum = sum + _arrayData[i];
        }
        return sum;
    }
    function find(uint32 input) public view returns(uint32 i) {
        for(uint j=0; j<_arrayData.length; j++) {
            if(_arrayData[j] == input) {
                i = j;
            }
        }
    }
    function set(uint32 index, uint32 element) public returns(uint32 x) {
        uint32 t = _arrayData[index];
        _arrayData[index] = element;
        return t;
    }
    function get(uint32 index) public view returns(uint32 x) {
        return _arrayData[index];
    }
    function sort() public {
        if(_arrayData.length > 1) {
            uint32 temp;
            for(uint32 i=0; i<_arrayData.length-1; i++) {
                if(_arrayData[i] > _arrayData[i + 1]) {
                    temp = _arrayData[i];
                    _arrayData[i] = _arrayData[i + 1];
                    _arrayData[i+1] = temp;
                }
            }
        }
    }
}
contract ArrayAndMemory {
    function useArrays(Array memory mem, Memory memory mom) public view {
        uint32 min = mem.min();
        uint32 max = mem.max();
        uint32 sum = mem.sum();
        uint32 x;
        uint3
