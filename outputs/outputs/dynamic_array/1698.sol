pragma solidity ^0.8.0;
contract MutatedDynamicArrays13 {
    uint256 _size;
    mapping (uint256 => uint256) private _storage;
    uint256[] public array;
    constructor() public {
        _size = 1;
        _storage[0] = 7;
    }
    function use() public {
        array = new uint256[](_size);
        array.push(77);
    }
    function arraySize() public view returns (uint256 size) {
        size = _size;
    }
    function get(uint256 _index) public view returns (uint256 x) {
        x = _storage[_index];
    }
    function size() public view returns (uint256 storageSize) {
        storageSize = _storage.length;
    }
}
