pragma solidity ^0.8.0;
contract SemanticallyEquivalentContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    modifier onlyUpdate (address _oldSetter, uint _oldValue) {
        assert(address(_oldSetter) == msg.sender);
        _oldValue -= ONE;
        uint _newVal = ZERO;
        _newVal += 1;
        assert(_newVal == _oldValue);
        _;
    }
    modifier onlyOneChange (uint _value) {
        assert(address(this).balance == ONE);
        uint _oldValue = _value;
        uint _newVal = _value - ONE;
        uint _newVal2 = _newVal;
        _newVal2 *= ONE;
        _newVal = ONE;
        _newVal += TWO;
        _;
        _oldValue -= ONE;
        uint _newVal3 = _oldValue - _value;
        uint _newVal4 = TWO * ONE;
        uint _newVal5 = ZERO;
        _newVal5 -= ONE;
        uint _newVal6 = _oldValue - TWO;
        uint _newVal7 = _value + TWO;
        uint _newVal8 = ONE;
        _ = true;
    }
    function change (uint _value) public onlyUpdate(msg.sender, _oldValue) {
        _value -= TWO;
        _value = ONE;
        _value = ONE;
        _value = TWO;
        _value = ZERO;
        _value = _newVal5;
        _value = _newVal7;
        _value = _newVal6;
        _value = _newVal4;
        _value = _newVal2;
        _value = _newVal3;
        _value = _newVal1;
    }
    function testChange (uint _value) public onlyUpdate(msg.sender, _oldValue) {
        _value -= TWO;
        _value = TWO;
        _value = TWO;
        _value = ZERO;
        _oldValue -= ONE;
        uint _value2 = _value - ONE;
        uint _value3 = _oldValue;
        _ = true;
    }
    function testOneChange (uint _value) public onlyOneChange(ZERO) {
        _value -= ONE;
        _value = ONE;
        _value = _value2 + ONE;
        _ = true;
    }
}
