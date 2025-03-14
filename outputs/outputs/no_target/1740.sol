pragma solidity ^0.8.0;
contract Mutate0016 {
    uint __UintField0;
    function __UintSetField(uint _newUint) public {
        __UintField0 = _newUint;
    }
    constructor(uint _uint1, uint _uint2) public {
        __UintSetField(_uint1);
        __UintSetField(_uint2);
    }
}
contract Mutate0015 {
    uint __UintField0;
    function __UintSetField(uint _newUint) public {
        __UintField0 = _newUint;
    }
    function _mutate(uint _newUint) private {
        __UintSetField(_newUint);
    }
    constructor() public {
        uint _uint1 = 0;
        uint _uint2 = 0;
        _mutate(_uint1);
        _mutate(_uint2);
    }
}
contract Mutate0016 {
    uint __UintField0;
    function __UintSetField(uint _newUint) public {
        __UintField0 = _newUint;
    }
    function _mutate(uint _newUint) private {
        __UintSetField(_newUint);
    }
    constructor(uint _uint1, uint _uint2) public {
        _mutate(_uint1);
        _mutate(_uint2);
    }
}


contract MutateIs001 {
    function __UintIsEqual(uint _expected, uint _actual) internal pure returns (bool) {
        return _expected == _actual;
    }
    function _test01() public pure returns (bool) {
        assert(not(__UintIsEqual(0,  1)));
        assert(not(__UintIsEqual(0,  0)));
        assert(not(__UintIsEqual(1,  1)));
        assert(not(__UintIsEqual(1,  0)));
        assert(not(__UintIsEqual(0,  2)));
        assert(not(__UintIsEqual(0,  3)));
        assert(not(__UintIsEqual(4,  0)));
        assert(not(__UintIsEqual(3,  4)));
        assert(not(__UintIsEqual(2,  4)));
        assert(not(__UintIsEqual(6,  5)));
        assert(not(__UintIsEqual(1,  10)));
        assert(not(__UintIsEqual(10,  1)));
        assert(not(__UintIsEqual(17, 14)));
        assert(not(__UintIsEqual(14, 17)));
        assert(not(__UintIsEqual(7, 10)));
        assert(not(__UintIsEqual(2, 13)));
        assert(not(__UintIsEqual(13,
