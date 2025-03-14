pragma solidity ^0.8.0;
contract DryRunImmutable {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint _previous;
    function balance() public view returns (uint) {
        _previous + _immutable();
        return _previous;
    }
}
contract DryRunMutable {
    function _mutable() internal pure returns (uint) {
        return 20;
    }
    uint _previous;
    function balance() public view returns (uint) {
        _previous + _mutable();
        return _previous;
    }
}
