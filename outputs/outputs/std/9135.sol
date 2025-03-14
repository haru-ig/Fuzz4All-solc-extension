pragma solidity ^0.8.0;
contract ProceduralComparisonContract {
    uint256 public _value1;
    uint256 public _value2;
    bytes32 public _message;
    mapping (address => address) public mappings;
    constructor(bytes32 message) {
        _message = message;
    }
    function increment() public {
        mappings[msg.sender] = msg.sender;
        uint256 oldValue1 = _value1;
        uint256 oldValue2 = _value2;
        bytes32 oldValueMessage = _message;
        _value1++;
        _value2 -= _value1;
        _value2 += _value1;
        bytes32 newValueMessage = _message;
        uint256 newValue1 = _value1;
        uint256 newValue2 = _value2;
        _value1 = newValue1;
        _value2 = newValue2;
        emit UpdatedValues(oldValue1, oldValue2, newValue1, newValue2, oldValueMessage, newValueMessage);
    }
    function getValue() public view returns (uint256) {
        return _value2;
    }
    event UpdatedValues(uint256 oldValue1, uint256 oldValue2, uint256 newValue1, uint256 newValue2, bytes32 oldValueMessage, bytes32 newValueMessage);
}
contract Companies {
    address public _owner;
    address public _address1;
    address public _address2;
    address public _address3;

    uint256 public _amount;
    mapping (address => uint256) public _balances;
    uint
