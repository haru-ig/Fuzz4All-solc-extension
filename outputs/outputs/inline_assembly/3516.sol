pragma solidity ^0.8.0;
contract ContractWithOverloadedChangeFunctions {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    modifier onlyUpdate (address _oldSetter, uint _oldValue) public returns (uint _newValue) {
        require(address(_oldSetter) == msg.sender);
        uint newValue = _newValue;
        newValue -= TWO;
        _newValue -= ONE;
        _newValue += ONE;
        _newValue -= ONE;
        _newValue += ONE;
        newValue -= TWO;
        _newValue -= ONE;
        _newValue += ONE;
        _newValue -= TWO;
        _newValue += ONE;
        _newValue += TWO;
        newValue -= ONE;


        newValue -= TWO;
        _newValue -= ONE;
        _newValue += ONE;
        _newValue -= ONE;
        _newValue -= TWO;
        _newValue += ONE;
        _newValue += TWO;
        newValue -= ONE;


        newValue -= TWO;
        _newValue -= ONE;
        _newValue += ONE;
        _newValue -= ONE;
        _newValue -= TWO;
        _newValue += ONE;
        _newValue += TWO;
        newValue -= ONE;


        newValue -= TWO;
        _newValue -= ONE;
        _newValue += ONE;
        _newValue -= ONE;
        _newValue -= TWO;
        _newValue += ONE;
        _newValue += TWO;
        newValue -= ONE;


        newValue -= TWO;
        _newValue -= ONE;
        _newValue += ONE;
        _newValue -= ONE;
