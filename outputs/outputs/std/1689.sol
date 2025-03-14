pragma solidity ^0.8.0;
contract Array {
    bytes storage _data;
    uint capacity;
    uint length;
    uint internal constant _32 = uint(32);
    mapping(uint => uint[]) internal array;
    mapping(uint => uint) internal _number;
    mapping(uint => uint) internal _number2;
    mapping(uint => uint) internal _number3;
    mapping(uint => uint) internal _number4;
    mapping(uint => uint) internal _number5;
    mapping(uint => uint) internal _number6;
    mapping(uint => uint) internal _number7;
    mapping(uint => uint) internal _number8;
    mapping(uint => uint) internal _number9;

    function Array() {
        capacity = uint(0);
        length = uint(0);
        _data = bytes('0');
    }

    function bytesGet() public view returns(bytesstorage) {
        require(capacity!= 0);
        return _data;
    }

    function bytesSet(bytes _bytes) public {
        require(capacity == 0);
        length = bytesToUint(_bytes);
        capacity = length;
        _data = _bytes;
    }

    function uintGet(uint _index) public view returns(uint) {
        if(_index>=capacity) return uint(0);
        else return array[_index];
    }

    function uintSet(uint _index, uint _number) public {
        if(_index>capacity || _index<uint(_1) && _number==uint(_1)) return;
        else {array[_index] = [array[_index]];}
        array[_index] = _number;
    }

    function stringGet(uint _index) public {
        require(capacity!=0);
        uint _length = bytesToUint(get(uint(_index)));
        require
