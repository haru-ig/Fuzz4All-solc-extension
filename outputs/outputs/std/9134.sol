pragma solidity ^0.8.0;
contract OptimalEthereumComparingContract {
    uint256 public _value1;
    uint256 public _value2;
    mapping (address => address) public mappings;
    constructor() {
        _value1 = 0;
        _value2 = 0;
    }
    constructor(uint256 _v) public {
        _value1 = 0;
        _value2 = _v;
    }
    function increment() public {
        uint256 val1 = _value1;
        uint256 val2 = _value2;
        _value1++;
        _value2 += _value1;
        _value2 -= _value1;
        emit UpdatedValues(val1, val2, _value1, _value2);
    }
    function getValue() public view returns (uint256) {
        return _value2;
    }
    event UpdatedValues(uint256 oldValue1, uint256 oldValue2, uint256 newValue1, uint256 newValue2);
}
contract EfficientMultiprecisionEthereumComparingContract {
    uint256 public _value1;
    uint256 public _value2;
    constructor() internal {
        _value1 = 0;
        _value2 = 0;
    }
    constructor(uint256 _v) internal {
        _value1 = 0;
        _value2 = _v;
    }
    function increment() public {
        uint256 val1 = _value1;
        uint256 val2 = _value2;
