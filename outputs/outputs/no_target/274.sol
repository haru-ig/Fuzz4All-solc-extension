pragma solidity ^0.8.0;
contract Mutable {
    function _mutable() internal pure returns (uint) {
        return 10;
    }
    uint internal mutable _previous;
    function balance2() public view returns (uint) {
        _previous + _mutable();

        return _previous;
    }
}
