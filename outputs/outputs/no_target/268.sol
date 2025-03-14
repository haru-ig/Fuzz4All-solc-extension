pragma solidity ^0.8.0;
contract Mutable {
    function _immutable() internal returns (uint) {
        return 10;
    }
    uint internal mutable _previous;
    function balance() public view returns (uint) {
        _previous + _immutable();
        return _previous;
    }
}
