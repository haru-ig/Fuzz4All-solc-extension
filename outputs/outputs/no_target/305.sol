pragma solidity ^0.8.0;
contract ImmutableMutatedMutatedImmutable {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public __mutated;
    uint public _previous;
    function balance() public view returns (uint) {
        __mutated += 1;
        _previous + _previous + _previous * _previous;
        _previous * _previous + _previous + _previous * _previous * _previous;
    }
}
contract ImmutableMutatedImmutableMutated {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public __mutated;
    uint public _previous;
    function balance() public view returns (uint) {
        __mutated += 1;
        _previous + _previous + _previous * _previous;
        _previous * _previous + _previous + _previous * _previous * _previous;
    }
}
contract ImmutableMutatedImmutableImmutable {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public __mutated;
    uint public _previous;
    function balance() public view returns (uint) {
        __mutated += 1;
        _previous + _previous + _previous * _previous;
        _previous * _previous + _previous + _previous * _previous * _previous;
    }
}
contract ImmutableMutatedImmutableImmutableImmutable {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public __mutated;
    uint public _previous;
    function balance() public view returns (uint) {
        __mutated += 1;
        _previous + _previous + _previous * _previous;
        _previous * _previous + _previous + _previous * _previous * _previous;
    }
}
interface ImmutableMutatedMutatedImmutable {
    function _immutable() internal pure returns (uint) = 0;
    uint public __mutated;
    uint public _previous;
    function balance() public view returns (uint) {
        __mutated += 1;
        _previous + _previous + _previous * _previous;
        _previous * _previous + _previous + _previous * _previous * _previous;
    }
}
contract ImmutableMutatedImmutableImmutableImmutable {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public __mutated;
    uint public
