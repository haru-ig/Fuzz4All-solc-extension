pragma solidity ^0.8.0;
contract Cast_equivalent_4 {
    uint32 public num;
    uint16 public num1;
    mapping(uint => uint) _map;
    uint _last;
    constructor(uint _num1, uint _last) {
        num1 = _num1;
        num = _last;
        _map[num] = _last;
        _last += uint16(_num1);
    }
    function get(uint id) view returns (uint32) {
        return uint32(_map[id]);
    }
    function set(uint id, uint _data) {
        uint _last = num;
        num = uint32(_data);
        _map[id] = uint16(_data);
        uint _last2 = num;
        num = _last + uint16(_num1);
    }
}
