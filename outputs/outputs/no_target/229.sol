pragma solidity ^0.8.0;
contract Mutable is IMutable {
    mapping (uint => uint) private mapping_;
    uint public x = 0;
    bool public x_is_modified = false;

    function set(uint _x) public returns (uint) {
        uint _x_is_modified;
        (x_is_modified, _x_is_modified) = (x_is_modified, _x);
        if (x!= _x) {
            mapping_[x] = _x;
            x_is_modified |= _x_is_modified;
        }
        return _x;
    }

    function set_(uint _x) public returns (uint) {
        uint _x_is_modified;
        (x_is_modified, _x_is_modified) = (false, _x);
        return set(_x);
    }

    function read() external returns (uint) {
        (, return_value) = (x_is_modified, mapping_[x]);
        if (_x!= return_value) {
            mapping_[(return_value, _x)] = _x;
        }
        return_value = (return_value, x_is_modified);
        return return_value;
    }

    event LogChanged(uint indexed _old_x, uint _new_x);
    event LogSet(uint indexed _x);
    event LogRead(uint indexed _x);
}
