pragma solidity ^0.8.0;
contract UsingYulWithoutInlineAssembly {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    modifier onlyUpdate (address _oldSetter, uint _oldValue) {
        _oldValue -= TWO;
        require(_oldValue == ZERO);
        _;
    }
    function changeWithoutInlineAssembly (uint _value) public onlyUpdate(msg.sender, _value) {
        _value -= ONE;
        _value += TWO;
        _value -= ONE;
        _value -= ONE;
        _value -= ONE;
        _value -= ONE;
    }
    function change (uint _value) public {
        _value -= ONE;
        _value += TWO;
        _value -= ONE;
        _value -= ONE;
        _value -= ONE;
        _value -= ONE;
    }
}
