pragma solidity ^0.8.0;
contract Mutated {
    function _mutated() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        _previous + _mutated();
        _previous;
        return _previous;
    }
}
contract MutatedImmutable {
    function _mutated() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        _previous + _mutated();
        _previous * _previous;
        return _previous;
    }
}
contract MutatedImmutableMutated {
    function _mutated() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        _previous + _mutated();
        _previous * _previous;
        return _previous * _previous;
    }
}
contract ImmutableMutated {
    function _mutated() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        _previous + _mutated();
        _previous + _previous;
        return _previous + _previous + _previous;
    }
}
contract MutatedImmutableMutated {
    function _mutated() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        _previous + _mutated();
