pragma solidity ^0.8.0;
contract SemanticsExampleContract {
    uint256 public _value1;
    uint256 public _value2;
    constructor() {
        _value1 = _value2 = 0;
    }
    function increment() public {
        _value1 = _value1 + 1;
        _value2 = _value1 + _value2;
        _value2 = _value1 + _value2;
    }
    function getValue() public view returns (uint256) {
        return _value1;
    }
}
contract EqualityExampleContract {
    bool public _value1;
    bool public _value2;
    constructor() {
        _value1 = _value2 = false;
    }
    function increment() public {
        _value1 = _value1 + 1;
        _value2 = _value1 + _value2;
        _value2 = _value1 + _value2;
    }
    function getValue() public view returns (bool) {
        return _value1;
    }
}
contract UnrelatedExampleContract {
    uint256[50] public _value1;
    uint256 public _value2;
    function increment() public {
        _value1 = _value1 + 1;
        _value2 = _value1 + _value2;
        _value2 = _value1 + _value2;
    }
    function getValue() public {
        _value2 = _value1 + _value2;
        _value1 = _value2 - _value1;
        _value2 = -5-8;
    }
}
