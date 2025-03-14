pragma solidity ^0.8.0;
contract Mutated {
    uint[] public storage;
    function _set(uint) public {}
    function test() public {
        storage[_set(243)] = 4;
        uint i = _set(45);
    }
}
