pragma solidity ^0.8.0;
contract SemanticallyEquivalentContract {
    modifier onlyUpdate (address _oldSetter, uint _oldValue) {
        _oldSetter;
        _oldValue -= TWO;
        _oldValue -= TWO;
        _;
    }
    function change (uint _value) public onlyUpdate(msg.sender, _value) {
        _value -= TWO;
        _value -= TWO;
        _value -= TWO;
        _value = ONE;
        _value = TWO;
        _value -= ONE;
    }
}
