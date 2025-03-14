pragma solidity ^0.8.0;
contract Immutable is Immutable {
    function immutable(uint a) internal pure returns (uint) {
        _previous = a;
        return _previous;
    }
    uint internal immutable before;
    function immutable(uint a) internal pure returns (uint b) {
        previous = a;
        return a;
    }
    uint private immutable previous;
    function immutable(uint a) internal pure returns (uint b) {
        before = a;
    }
}
