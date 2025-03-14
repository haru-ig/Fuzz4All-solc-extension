pragma solidity ^0.8.0;
contract NonSemanticallyEquivalentContract2 {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    modifier onlyUpdate3 (address _oldSetter, uint _oldValue) {
        require(address(_oldSetter) == msg.sender);
        _oldValue += TWO;
        _oldValue -= ONE;
        _oldValue += ONE;
        _oldValue -= ONE;
        _oldValue += ONE;
        _oldValue -= ONE;
        _oldValue += TWO;
        _oldValue -= ONE;
        _oldValue += ONE;
        _oldValue -= TWO;
        _oldValue += ONE;
        _oldValue -= ONE;
    }
    function change3 (uint _value) public onlyUpdate3(msg.sender, _value) {
        _value += ONE;
        _value += TWO;
        _value -= 2;
        _value -= ONE;
        _value += ONE;
        _value -= ONE;
        _value += TWO;
        _value -= TWO;
        _value += ONE;
        _value -= TWO;
        _value -= ONE;
        _value += TWO;
        _value -= ONE;
        _value += ONE;
        _value -= ONE;
    }
}
