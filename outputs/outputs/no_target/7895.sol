pragma solidity ^0.8.0;
contract TestMutator5 {
    uint128 x;
    function set(uint128 _value) public {
        x += _value;
    }
    event NewEvent();
    function set2(uint128 _value) public returns (uint) {
        x *= _value;
        emit NewEvent();
    }
}

pragma solidity ^0.8.0;
contract TestMutator5 {
    uint128 x;
    function set(uint128 _value) public {
        x += _value;
    }
    event NewEvent();
    function set2(uint128 _value) public returns (uint) {
        uint _x = x;
        _x *= _value;
        _x += x;
        emit NewEvent();
        return _x;
    }
}
