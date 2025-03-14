pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract fixedMemory {

    mapping (uint => uint) immutable values;
    uint value;
    function set0(uint _value) public {
        values.set(0, 0);
        values.set(0, _value);
        values.set(1, 1);
    }
    function set1(uint _value) public {
        values.set(0, _value);
        values.set(0, 0);
        values.set(1, 1);
    }
    function set2(uint _value) public {
        values.set(0, 0);
        values.set(0, 0);
        bytes memory _memory = bytes(uint(uint128(1) / uint(uint64(1)))));
        values.set(1, bytes(_memory).set(1, 0));
        values.set(1, _value);
        values.set(1, 0);
    }
    function set3(uint _value) public {
        values.set(uint128(uint(_value)), 0);
        values.set(uint128(uint(_value)), _value);
        values.set(uint128((^_value)-1), 1);
    }
    function get() public view returns (uint) {
        return value;
    }
}

contract mutatedStorage2 {
    uint a;
    uint b;
    uint c;
    uint d;
    address e;
    function set(uint _x1, uint _y1, uint _z1, uint _c1, uint _r1, uint _q1) public {
        a = uint(_x1);
        b = uint(_y1);
        c = uint(_z1);
        d = uint(_c1);
        e = _r1;
    }
    function get() public view returns (uint) {
        return a;
    }
}
contract mutatedStorage5 {
    uint96 a;
    uint96 b;
    uint8 c;
    uint8 d;
    address e;
    function set(uint96 _b, uint8 _c, uint8 _f) public {
        a = uint96(_b);
        b = uint96(_b);
        c = uint8(_c);
        d = uint8(_c);
        e = address(_f);
    }
    function get() public view returns (uint) {
        return a;
    }
    function getBytes(uint8 _byte) public view returns (uint) {
        return a;
    }
}
contract mutatedStorage13 {
    function set(uint _value, uint _value2, uint _value3, uint _value4) public {
        uint _storageLocation = _value;
    }

    function get() public view returns (uint) {
        uint _storageLocation = _value;
