pragma solidity ^0.8.0;
contract Mutable {
    function _mutable() internal pure returns (uint) {
        return 20;
    }
    uint internal _previous;
    function balance() public view returns (uint) {
        _previous + _mutable();
        return _previous;
    }
}
