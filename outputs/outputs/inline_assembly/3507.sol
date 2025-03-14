pragma solidity ^0.8.0;
contract SemanticallyEquivalentContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    modifier onlyUpdate (address _oldSetter, uint _oldValue) {
        assert(_oldSetter == msg.sender);
        _oldValue -= TWO;
        assert(_oldValue == ZERO);
        _;
    }
    function change (uint _value) public onlyUpdate(msg.sender, _value) {
        _value -= TWO;
        _value -= ONE;
        _value = ZERO;
    }
}

pragma solidity ^0.8.0;
*/ This test generates an error */


contract NeverEverUpdateContract2 {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    function update2 () constant returns(uint8) {
        return ONE;
    }
}
contract NeverEverUpdateContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    function update () constant returns(uint8) {
        return ONE;
    }
}
