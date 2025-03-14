pragma solidity ^0.8.0;
contract Immutable {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint internal immutable _previous;
    function balance() public view returns (uint) {
        _previous + _previous * _previous;
        return _previous;
    }
}
contract Mutated {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint internal immutable _previous;
    function balance() public view returns (uint) {
        _previous + _previous * _previous;
        _previous + _previous;
        return _previous;
    }
}
contract MutatedImmutable {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint internal immutable _previous;
    function balance() public view returns (uint) {
        _previous + _previous * _previous;
        _previous * _previous;
        return _previous;
    }
}
contract ImmutableMutated {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint internal immutable _previous;
    function balance() public view returns (uint) {
        _previous + _previous * _previous;
        _previous + _previous;
        _previous * _previous;
        return _previous + _previous + _previous + _previous;
    }
}
contract MutatedImmutableMutated {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint internal immutable _previous;
    function balance() public view returns (uint) {
        _previous + _previous * _previous;
