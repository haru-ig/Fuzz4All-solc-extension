pragma solidity ^0.8.0;
library Array {
struct ArrayStorage {
    uint256 data;
    uint256 num_elements;
    uint256 storage_length;
}
function ArrayStore(uint256 _data, uint256 _length) internal pure returns (ArrayStorage memory arr) {
    return (arr = ArrayStorage(_data, _length, 0));
}
function ArrayInit(uint256 _length) internal pure returns (ArrayStorage memory arr) {
    return(arr = ArrayStorage(0, _length, 0));
}
function ArrayFind(ArrayStorage storage _storage, uint256 _index) public view returns (uint256 element) {
    element = _storage.data[_index];
    return;
}
function ArrayLength(ArrayStorage storage _storage) public view returns(uint256 array_length) {
    return(_storage.num_elements);
}
function ArraySet(ArrayStorage storage _storage, uint256 _index, uint256 _value) public {
    _storage.data[_index] = _value;
}
function ArrayAdd(uint256 _value, ArrayStorage storage _storage) public pure returns (uint256 _res_length) {
    _storage.element[(_storage.num_elements + 1)].value = _value;
    return(_storage.num_elements += 1);
}
function ArrayAdd(uint256 _value, uint256 _length, ArrayStorage storage _storage) internal pure returns (uint256 _res_length) {
    require(_storage.num_elements + _length <= _storage.storage_length);
    for (uint256 i = _storage.num_elements+1; i <= _storage.storage_length; i++) {
        _storage.data[i] = 0;
    }
    _storage.data[_storage.storage_length].value = _value;
    _storage.num_elements += _length;
    _storage.storage_length += _length;
    return(_storage.num_elements);
}
function ArraySort(uint256 _start, uint256 _end, ArrayStorage storage _storage) internal pure returns (uint256 _res_length) {
    uint256 i;
    for (i = _start; i < _end;
