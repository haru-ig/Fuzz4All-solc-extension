pragma solidity ^0.8.0;
contract MutateContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    modifier onlyGet(uint _value) {
        assert(_value == TWO);
        _;
    }
    function change (uint _value) public onlyGet(_value) {
        if (_value == ZERO)
            _value = ONE;
        else
            _value = ZERO;
        if (_value == TWO)
            _value = THREE;
        else
            _value = ZERO;
    }
}

pragma solidity ^0.8.0;
abstract contract AbstractCreatorContract {
    function get(uint _value) abstract public view returns (uint);
}

pragma solidity ^0.8.0;
contract ExtendedCreatorContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    modifier onlyGet(uint _value) {
        assert(_value == THREE);
        _;
    }
    function change (uint _value) public onlyGet(_value) {
        if (_value == ZERO)
            _value = TWO;
    }
}

pragma solidity ^0.8.0;
contract ProgrammableContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    modifier onlyGet(uint _value) {
        assert(_value == THREE);
        _;
    }
    function change (uint _value) public onlyGet(_value) {
        if (_value == ZERO)
            _value = TWELVE;
    }
}
