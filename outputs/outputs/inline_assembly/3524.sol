pragma solidity ^0.8.0;
contract SemanticsDifferentlyImplementedYul {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    modifier onlyUpdate3 (address _oldSetter, uint _oldValue) {
        require(address(_oldSetter) == msg.sender);
        _oldValue -= ONE;
        require(_oldValue == ZERO);
        _;
    }
    function change3 (uint _value) public onlyUpdate3(msg.sender, _value) {
        _value -= ONE;
        _value -= ONE;
        _value += TWO;
        _value -= ONE;
        _value += TWO;
        _value -= ONE;
        _value += TWO;
        _value -= ONE;
        _value += TWO;
    }
}
contract NoSemanticsDifferentlyImplementedYul {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;

    function change4 (uint _value) public {
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
