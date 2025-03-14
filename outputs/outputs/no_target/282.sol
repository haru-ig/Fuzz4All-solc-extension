pragma solidity ^0.8.0;
contract ImmutableSimple {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint internal immutable _previous;
    function balance() public view returns (uint) {
        _previous;
        return _previous + _immutable();
    }
}
contract MutatedSimple {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint internal immutable _previous;
    function balance() public view returns (uint) {
        _previous + _immutable();
        return _previous * _previous + _previous;
    }
}
contract MutatedSimpleImmutable {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint internal immutable _previous;
    function balance() public view returns (uint) {
        _previous + _immutable();
        return _previous + _previous + _immutable();
    }
}
contract ImmutableMutatedSimple {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint internal immutable _previous;
    function balance() public view returns (uint) {
        _previous + _immutable();
        return _previous * _previous + _previous + _immutable();
    }
}
contract MutatedSimpleImmutableMutated {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint internal immutable _previous;
    function balance() public view returns (uint) {
        _previous + _immutable();
        return _previous + _previous + _previous + _immutable();
    }
}
contract ImmutableSimpleMutated {
    function
