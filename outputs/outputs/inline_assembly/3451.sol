pragma solidity ^0.8.0;
contract ChangeLecture {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    modifier onlyIf(bool condition) {
        require(condition);
        _;
    }
    function set (uint _value) public onlyIf(_value == ZERO) {}
}
contract ChangeMultiple {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    modifier onlySet(uint newValue) {
        assert(newValue!= ZERO);
        _;
    }
    function set(uint _value1, uint _value2, uint _value3) public onlySet(_value1) {
        require(uint(_value3) >= _value2);
    }
}

pragma solidity ^0.8.0;
contract ChangeLecture {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    modifier onlyIf (bool condition) {
        require(condition);
        _;
    }
    function set(uint _value1, uint _value2, uint _value3) public onlyIf(_value1 == ZERO) {
        require(uint(_value2) >= _value3);
    }
}
contract ChangeMultiple {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    modifier onlySet(uint newValue) {
        assert(newValue!= ZERO);
        _;
    }
    function set(uint _value1, uint _value2, uint _value3) public onlyIf(_value1 == ZERO) {
        assert(_value1 == ZERO);
        require(_value2 >= _value3);
    }
}
