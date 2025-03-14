pragma solidity ^0.8.0;
contract C {
    uint[3] _array;
    function set(uint n, uint value) public {
        _array[n] = value;
    }
}
