pragma solidity ^0.8.0;
contract CompiledExampleContract {
    using CompiledExampleContract for CompiledExampleContract.increment;
    uint256 _value1;
    uint256 _value2;
    function increment() public {
        _value1 = _value1 + 1;
        _value2 = _value1 + _value2;
        _value2 = _value1 + _value2;
        _value2 = _value1 + _value2;
    }
    function getValue() public view returns (uint256) {
        return _value1;
    }
}

pragma solidity ^0.8.0;
contract CompiledExampleContract {
    using CompiledExampleContract for CompiledExampleContract.increment;
    uint256 _value1;
    uint256 _value2;
    function increment() public {
        _value1 = _value1 + 1;
        _value2 += _value1;
        _value2 -= _value1;
        _value2 *= _value1;
        _value1 = _value1 + 1;
    }
    function getValue() public view returns (uint256) {
        return _value1;
    }
}

pragma solidity ^0.8.0;
contract CompiledExampleContract {
    using CompiledExampleContract for CompiledExampleContract.increment;
    uint256 _value1;
    uint256 _value2;
    uint256 _value3;
    uint256 _value4;
    function increment() public {
        uint256 tempValue = _value1 + _value2 + _value3 + _value4;
        require(tempValue >= 0);
        _value2 += tempValue;
        _value3 += tempValue;
        _value4 += tempValue;
        _value1 += tempValue;
    }
    function getValue() public view returns (uint256) {
        return _value1;
    }
}
