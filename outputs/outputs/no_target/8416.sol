pragma solidity ^0.8.0;
contract Unsafe2D {
    constructor (address a) {
        uint b;
        uint c;
        assembly {
            b := a
            c := b
        }
        uint d;
        uint e;
        assembly {
            d := c
            e := _bts
        }
    }
    function set(uint _value, uint8 _bts) public {
        _value = _value;
        _bts = _bts;
    }
}

pragma solidity ^0.8.0 abi coder v2;
contract Unsafe2D {
    constructor (address a) {
        a = a;
    }
    function set(uint _value, uint8 _bts) public {
        _value = _value;
        _bts = _bts;
    }
}
