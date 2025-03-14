pragma solidity ^0.8.0;
contract R3 {
    struct FooStruct {
        uint t;
        uint t2;
        uint a;
        uint b;
    }
    mapping (uint => FooStruct) map;

    constructor(uint _v, uint _w) public
    {
        _add(_v,_v,_v,_add(uint(_v),uint(_v),_add(uint(_v),uint(_v),uint())))
    }

    function _add(uint _a, uint _b, uint _c, uint d) internal view returns (uint) {
            return (d - (_c & _b)) - _a ^ uint(_b & 1);
    }
}
