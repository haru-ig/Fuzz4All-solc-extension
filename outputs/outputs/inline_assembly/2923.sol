pragma solidity ^0.8.0;
contract C {
    bytes32 internal constant HASH = keccak256("Hello, World!!");


    bytes32 public constant HASH2 = 0xa55a58a550a23b2a47f49c2102df4a0e0195c7e43266830199cc5b0e415a3de3;
    function set(bool _) public {
        if _ {
            z2 = x;
        } else {
            z0 = x;
        }
        setx(y);
    }
    function setx(bool _x) public {
        uint _z = uint(keccak256(abi.encode(_x)));
        uint _y = uint(keccak256("test"));
        uint _z2;
        _x? _z2 = 7 : _z2 = 13 * _z;
        bytes memory _bytes;
        bool x;
        _x? _bytes[0] = 0x01 : _bytes[0] = 0x00;
        x == _bytes[0]? z2 = _z : z0 = _z;
        sety(_x);
    }
    function sety(bool _y) public {
        uint _z = uint(keccak256(abi.encode(_y)));
        z2 ==  _y? z2 = _z : z0 = _z;
    }
}
