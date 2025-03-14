pragma solidity ^0.8.0;
contract MutatedMutated {
    function _previousValue() internal view returns (uint) {
        return 100;
    }
    uint internal _value;
    function balance() public view returns (uint) {
        return _value + _previousValue() + _previousValue();
    }
    function _setValue(uint _value_) public {
        _value = _value_;
    }
}

pragma solidity ^0.8.0;
contract ImmutableMutatedMutatedChild is ImmutableMutatedMutated {
}
contract MutatedMutatedChild is MutatedMutated {
}
