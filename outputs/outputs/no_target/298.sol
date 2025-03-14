pragma solidity ^0.8.0;
contract Immutable {
    enum Enum {One, Two, Three}
    function _immutable() internal pure returns (uint) {
        return uint(Enum.One);
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        _previous + _immutable();
        _previous;
        return _previous;
    }
}
contract Mutated {
    function _immutable() internal pure returns (uint) {
        return uint(Enum.Two);
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        _previous + _immutable();
        _previous;
        return _previous;
    }
}
contract MutatedImmutable {
    enum Enum {One, Two, Three}
    function _immutable() internal pure returns (uint) {
        return uint(Enum.One);
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        _previous + _immutable();
        _previous;
        return _previous;
    }
}

pragma solidity ^0.8.0;
contract ImmutableMutated {
    enum Enum {One, Two, Three}
    function _immutable() internal pure returns (uint) {
        return uint(Enum.Two);
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        _previous + _immutable();
        _previous;
        return _previous;
    }
}
contract MutatedImmutableMutated {
    enum Enum {One, Two, Three}
    function _immutable
