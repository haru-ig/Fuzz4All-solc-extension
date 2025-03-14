pragma solidity ^0.8.0;
contract Unsafe00 {
    uint constant FOO = 42;
    function set(uint _value) public {
        uint[0] memory s;
        s[_value] = 0x42;
    }
    function get() public returns (uint) {
        uint[0] memory s;
        return s[_value]+42;
    }
}


contract Unsafe01 {
    uint[0] memory s;
    function set(uint _value) public {
        s[_value] = 0x42;
    }
    function get() public returns (uint) {
        uint[1] memory s;
        return s[_value]+42;
    }
}
