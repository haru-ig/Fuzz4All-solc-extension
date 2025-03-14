pragma solidity ^0.8.0;
contract SolidityComparingContract {
    uint256 public _value1;
    uint256 public _value2;
    mapping (address => address) mappings;
    function increment() public {
        uint256 val1 = _value1;
        uint256 val2 = _value2;
        mappings[msg.sender] = msg.sender;
        _value1++;
        _value2 -= _value1;
        _value2 += _value1;
        emit UpdatedValues(val1, val2, _value1, _value2);
    }
    function getValue() public view returns (uint256) {
        return _value2;
    }
    event UpdatedValues(uint256 oldValue1, uint256 oldValue2, uint256 newValue1, uint256 newValue2);
}

pragma solidity ^0.8.0;
contract SemanticsEfficientComparisonContract {
    uint256 public _value1;
    uint256 public _value2;
    mapping (address => address) mappings;
    uint256 public value;

    function increment() public {
        uint256 val1 = _value1;
        uint256 val2 = _value2;
        _value1++;
        _value2 -= _value1;
        _value2 += _value1;
        emit UpdatedValues(val1, val2, _value1, _value2);
    }
    function getValue() public view returns (uint25
