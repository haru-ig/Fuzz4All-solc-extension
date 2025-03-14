pragma solidity ^0.8.0;
contract ImmutabledMutatedMutatedMutated {
    uint public immutable previous;
    uint public _previous;
    constructor() public {
        previous = _immutable() + _immutable() + _immutable() * _immutable();
        _previous *= _immutable() + _immutable() + _immutable() * _immutable() + _immutable();
    }
    function balance() public view returns (uint) {
        previous + previous + previous * previous;
        previous * previous + previous + previous * previous + previous;
    }
}
