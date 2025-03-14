pragma solidity ^0.8.0;
contract Mutable {
    function _mutable() private returns (uint) {
        uint _previous;
        unchecked { _previous ++ }
        return _previous;
    }
    uint internal _previous;
    function balance() public view returns (uint) {
        _previous + _mutable();
        return _previous;
    }
}
