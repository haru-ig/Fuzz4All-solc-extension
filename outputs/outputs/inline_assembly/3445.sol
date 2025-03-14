pragma solidity ^0.8.0;
contract ChangeLecture {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    uint value;
    modifier onlySet(uint newValue) {
        assert(newValue!= ZERO);
        assert(newValue!= ONE);
        value = newValue;
        _;
    }
    constructor () {
        value = ZERO;
    }
    function get () public {
        assert(value!= ZERO);
    }
}
contract ChangeComplex {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    uint value;
    modifier onlySet(uint newValue) {
        assert(newValue!= ZERO);
        assert(newValue!= ONE);
        value = newValue;
        _;
    }
    constructor () {
        value = ZERO;
    }
    function get () public {
        assert(value!= ZERO);
    }
}

pragma solidity ^0.8.0;
contract ChangeZero {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    uint value;
    constructor () {
        value = ZERO;
    }

    function globalSet() public {
        global value = ZERO;
    }

    function set(uint _value) public onlySet(_value) {
        value = _value;
    }

}
contract SimpleSet {
    uint value;
    constructor () {
        value = 0;
    }

    function set (uint _value) publicOnlySet(_value) {
        value = _value;
    }

    function get() publicOnlyView returns (uint,bool){
        (bool,uint) _value = (false,value);
        return _value;
    }

    function nonViewIsPrivate(uint _value) public {
        value = _value;
    }
}
contract MutateGlobal {
    uint value;
    constructor () {
        value == ZERO;
    }

    function get () publicView returns (uint,bool) {
        (bool,uint) _value = (false,value);
        return _value;
    }

    function set (uint _value
