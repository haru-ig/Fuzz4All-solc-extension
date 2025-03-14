pragma solidity ^0.8.0;
contract A {
    uint _uint32;
    uint _uint64;
    function mutated() public pure returns (uint _y) {
        _uint64 = _uint64 * _uint32;
        _uint32 = 16**60;
        return (_uint64);
    }
}
