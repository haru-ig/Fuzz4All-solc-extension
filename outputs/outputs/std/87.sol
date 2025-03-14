pragma solidity ^0.8.0;
contract MutateProgram {
    uint _num;
    function increase(uint v) public {
        _num = _add_uint_uint(_num, v);
    }
    function get_num(uint v) public view returns (uint) {
        return _add_uint_uint(_num, v);
    }
}
