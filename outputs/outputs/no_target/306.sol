pragma solidity ^0.8.0;
contract MutatedMutatedMutated {

    function _mutable() internal pure returns (uint) {
        return 10;
    }
    uint public _previous;
    function balance() public view returns (uint) {

        _previous + _previous + _previous - _ previous * _previous;
        _previous * _previous + _previous + _previous * _previous;
    }
}
contract MutatedMutatedImmutable {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public _previous;
    function balance() public view returns (uint) {
        _previous - _previous + _previous * _previous;
        _previous + _previous + _previous*_previous;
    }
}
