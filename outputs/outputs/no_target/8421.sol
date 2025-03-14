pragma solidity ^0.8.0;
contract Unsafe3B {
    constructor () {
    }
    function set(uint _value, uint8 _bts) public {
        _value = _value;
        if (int(uint128(_bts)) == 0) revert("Bad");
    }
}
