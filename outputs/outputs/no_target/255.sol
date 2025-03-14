pragma solidity ^0.8.0;
contract Immutable {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint immutable _previous;
    function balance() public view returns (uint) {
        _previous + _immutable();
        return _previous;
    }
}
contract Mutable {
    function _mutable() internal pure returns (uint) {
        return 20;
    }
    uint immutable _previous;
    function balance() public view returns (uint) {
        _previous + _mutable();
        return _previous;
    }
}
