pragma solidity ^0.8.0;
contract FastEthereumComparingContract {
    uint256 internal public  _value1;
    uint256 internal public  _value2;
    address public mappingAddr;
    event UpdatedValues(uint256 oldValue1, uint256 oldValue2, uint256 newValue1, uint256 newValue2);
    constructor() public {
        mappingAddr = msg.sender;
    }
    function increment() public {
        uint256 val1 = _value1;
        uint256 val2 = _value2;
        _value1++;
        _value2 -= _value1;
        _value2 += _value1;
        emit UpdatedValues(val1, val2, _value1, _value2);
    }
    function getValue() public view returns (uint256) {
        return _value2;
    }
}
