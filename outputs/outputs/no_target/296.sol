pragma solidity ^0.8.0;
contract Immutable with ImmutableMutated {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    function balance() public view returns (uint) {
        _previous + _immutable();
        _previous + 1;
        return _previous;
    }
}
contract Mutated with MutatedImmutable, MutatedImmutableMutated {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    function balance() public view returns (uint) {
        _previous + _immutable();
        _previous + _previous;
        return _previous * _previous;
    }
}
contract ImmutableMutated with ImmutableMutated, ImmutableMutatedMutated {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    function balance() public view returns (uint) {
        _previous + _immutable();
        _previous + _previous;
        return _previous * _previous;
    }
}
contract MutatedImmutable with MutatedImmutable, ImmutableMutatedMutated {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    function balance() public view returns (uint) {
        _previous + _immutable();
        _previous + _previous;
        return _previous * _previous;
    }
}
contract ImmutableMutated with ImmutableMutated, MutatedImmutableMutated {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    function balance() public view returns (uint) {
        _previous + _immutable();
        _previous +
