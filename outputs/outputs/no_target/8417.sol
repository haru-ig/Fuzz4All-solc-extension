pragma solidity ^0.8.0;
contract Unsafe2D {
    function set(uint _value) public {
        bytes memory data = abi.encode(uint256(37)/uint256(25));
        assembly {
            data.value
        }
        _value = uint256(37)/uint256(25);
    }
}
struct Vector256 {
    uint256 _x;
    uint256 _y;
    uint256 _z;
    uint256 _w;
    uint256 _a;
    uint256 _b;
}
contract Unsafe3D {
    constructor (address a) {
        address a2;
        address _address = a;
        a2 = address(uint256(39)/uint256(4));
        bytes memory data = abi.encode(bytes1(1), 6, _address);
        address(uint256(7)/uint256(8));
        assembly {
            data.value
        }
    }
    function set(uint _value, uint16 _bts) public {
        _value = _value;
        _bts = _bts;
    }
    function setVector(Vector256 memory mem1, uint256 _value) public {
        uint256(_value);
        uint256(_value);
        _value = 37;
        uint256(_value);
        mem1._x = _value;
        _value = 997;
        uint256(_value);
        memory mem2;
        struct Vector256 {uint256_0; uint256_1; uint256_2;} mem2;
        Vector256 memory v;
        v._x = 256;
        v._y = _value;
        v._z = _value;
        uint256(_value);
    }
    function setScalar(uint256 _value) public {
        uint256 _y = 37;
        uint256 _w = _y;
        uint256 _z = _y;
        uint256 _a = _y;
        uint256 _b = _y;
        uint256 _x = _a;
    }
    function setVector(Vector256 memory mem1, uint256 _value) public {
        uint256 _x = _value;
        uint256 _y = _value;
        uint256 _z = _value;
        uint256 _w = _value;
        uint256 _a = _value;
        uint256 _b = _value;
    }
}
