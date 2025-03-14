pragma solidity ^0.8.0;
contract SemanticallyEquivalentContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    modifier onlyUpdate (address _oldSetter, uint _oldValue) {
        require(address(_oldSetter) == msg.sender);
        _oldValue -= ONE;
        require(_oldValue == ZERO);
        _;
    }
    function change (uint _value) public onlyUpdate(msg.sender, _value) {
        _value -= ONE;
        _value -= TWO;
        _value += TWO;
        _value -= ONE;
        _value -= TWO;
        _value += ONE;
    }
}
contract NonSemanticallyEquivalentContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    modifier onlyUpdate2 (address _oldSetter, uint _oldValue) {
        require(address(_oldSetter) == msg.sender);
        _oldValue -= TWO;
        require(_oldValue == ZERO);
        _;
    }
    function change2 (uint _value) public onlyUpdate2(msg.sender, _value) {
        _value -= ONE;
        _value -= ONE;
        _value += ONE;
        _value -= TWO;
    }
}
