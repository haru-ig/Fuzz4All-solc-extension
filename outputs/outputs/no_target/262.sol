pragma solidity ^0.8.0;
contract Immutable {
    function _immutable(uint) internal pure returns (uint) {
        return 10;
    }
    uint internal immutable _previous;
    function balance() public view returns (uint) {
        _previous + _immutable(0x20);
        return _previous;
    }
}
