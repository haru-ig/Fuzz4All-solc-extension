pragma solidity ^0.8.0;
contract Unsafe4C {
    constructor (uint _value) public {
        uint _x = (_value << (10000000));
        _value = 0x000000000000000000000000000000000000000000000000000000000000001234567890;
    }
    function set() public {
    }
}
