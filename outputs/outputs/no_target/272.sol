pragma solidity ^0.8.0;
contract Immutable {
    function _immutable1() internal pure returns (uint) {
        return 10;
    }
    uint internal immutable _previous1;
    function balance() public view returns (uint) {
        _previous1 + _immutable1();
        return _previous1;
    }
    function _immutable2() internal pure returns (uint) {

        return 29;
    }
    uint internal immutable _previous2;
    function balance1() public view returns (uint) {
        _previous2 + _immutable2();
        return _previous2;
    }
}
contract Modifier {
    function doWork() public pure returns (uint) {
        return 1;
    }
}
