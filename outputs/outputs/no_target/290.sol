pragma solidity ^0.8.0;
contract ImmutableMutatedImmutableMutatedImmutableMutatedImmutableMutated ImmutableMutated
{
    function _immutable() internal pure returns (uint) {
        return 10;
    }

    uint public immutable _previous;

    function balance() public view returns (uint) {
        _previous + _immutable();
        _previous * _previous;
        return _previous;
    }
}
