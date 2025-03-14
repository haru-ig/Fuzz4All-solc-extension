pragma solidity ^0.8.0;
contract ImmutableMutated with ImmutableMutated {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint internal immutable _previous;
    function balance() public view returns (uint) {
        _previous + _previous + _previous + _previous;
        _previous * _previous + _previous * _previous;
        return _previous + _previous * _previous;
    }
}
