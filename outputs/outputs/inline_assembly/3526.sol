pragma solidity ^0.8.0;
contract SemanticallyEquivalentYul {
    modifier onlyUpdate4 (address _oldSetter, uint _oldValue) {
        require(address(_oldSetter) == msg.sender);
        _oldValue -= ONE;
        require(_oldValue == ZERO);
        _;
    }
    function change4 (uint _value) public onlyUpdate4(msg.sender, _value) {
        _value -= TWO;
        _value -= ONE;
        _value += TWO;
        _value -= ONE;
        _value += TWO;
        _value -= ONE;
        _value += TWO;
        _value -= ONE;
        _value += TWO;
        _value -= ONE;
        _value += ONE;
        _value -= ONE;
        _value += ZERO;
    }
}
