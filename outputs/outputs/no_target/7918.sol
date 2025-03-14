pragma solidity ^0.8.0;
contract TestMutator {
    uint256 x;
    function set(uint256 _value) public {
        x = _value ^ x;
        return _value;
    }
    event NewEvent();
    function set2(uint256 _value) public {
        set2(_value);
        emit NewEvent();
    }
}
pragma solidity ^0.8.0;
contract TestMutator {
    uint256 x;
    function set(uint256 _value) public {
        x = _value ^ x;
        return _value;
    }
    event NewEvent();
    function set2(uint256 _value) public {
        set2(_value);
        emit NewEvent();
    }
}
