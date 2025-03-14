pragma solidity ^0.8.0;
contract TestMutator4 {
    uint256 public x;
    uint256 public z;
    constructor () public {
        x = 0xe20000000000000000000000000000000;
        z = 1;
    }
    function set(uint256 _value1) public {
    x = _value1;
    }
    function set2() public {
    x += x < 0x1400000000? 1 : x;
    }
}
contract TestMutator5 {
    uint256 public x;
    uint256 public z;
    constructor () public {
        x = 0xdeadbeef;
        z = 1;
    }
    function set(uint256 _value1) public {
    set(_value1<1? 1 : _value1);
    }
    function set2(uint256 _value1) public {
    x += _value1 < 0x1400000000? 1 : _value1;
    }
}
contract TestMutator6 {
    uint256 public x;
    uint256 public z;
    constructor () public {
        x = 0x98e3f94d98e3f94d98e3f94d98e3f94e;
        z = 1;
    }
    function set(uint256 _value1) public {
    set(_value1<1? 1 : _value1);
    }
    function set2(uint256 _value1) public {
    x += _value1 < 0x1400000000? 1 : x;
    }
}
contract TestMutator7 {
    uint8 x;
    uint8 y;
    uint160 z;
    constructor () public {
        x = 7;
        y = 5;
        z = 1;
    }
    function set(uint8 _value1, uint8 _value2) public {
        set(_value1<8? 8 : _value1, _value2<5? 5 : _value2);
    }
    function set2(uint8 _value1, uint8 _value2) public {
        set(_value1<8? 8 : _value1, _value2<5? 5 : _value2);
        x += _value1<8? 8 : x;
        y += _value2<5? 5 : y;
    }
