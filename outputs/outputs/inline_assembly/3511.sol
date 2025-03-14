pragma solidity ^0.8.0;
contract DifferenceBetweenInLinesAndFullAssemblyAssembly {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    modifier onlySetAndGetOldValue (address _oldSetter, address _oldValue) {
        _oldValue -= 2;
        _oldValue -= _oldSetter;
        assert(_oldValue == TWO);
        assert(_oldSetter == msg.sender);
        _;
    }
    function change (uint _value) public onlySetAndGetOldValue(msg.sender, _value) {
        _value -= ONE;
        _value -= _value * _value * _value * _value;
        _value += ONE;
        _value += _value + ONE;
        _value -= ONE;
        _value += ONE;
        _value -= TWO;
        _value -= ONE * _value;
        _value += ONE;
        _value -= ONE;
    }
}
contract DifferenceBetweenInLinesAndFullAssemblySolidity {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    modifier onlySetAndGetOldValue2 (address _oldSetter, address _oldValue) {
        _oldValue -= _oldSetter;
        _oldValue -= TWO;
        _oldValue -= _value;
        assert(_oldSetter == msg.sender);
        assert(_oldValue == ZERO);
        assert(_oldValue == TWO);
        _;
    }
    function change2 (uint _value) public onlySetAndGetOldValue2(msg.sender, _value) {
        _value -= 2;
        _value -= _value * _value;
        _value -= ONE;
        _value -= _value;
        _value
