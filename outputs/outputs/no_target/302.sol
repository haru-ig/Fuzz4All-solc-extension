pragma solidity ^0.8.0;
contract ImmutableMutatedMutatedImmutable {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        _previous + _previous + _previous * _previous;
        _previous * _previous + _previous + _previous;
    }
}
contract ImmutableMutatedImmutableMutated {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        _previous + _previous + _previous * _previous;
        _previous * _previous + _previous + _previous * _previous * _previous;
    }
}
