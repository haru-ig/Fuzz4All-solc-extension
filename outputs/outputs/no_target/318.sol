pragma solidity ^0.8.0;
contract MutableMutatedMutated {
    function _mutableValue() internal pure returns (uint) {
        return 10;
    }
    uint public _previousValue;
    function balance() public view returns (uint) {
        _previousValue + _previousValue + _previousValue + _previousValue + _previousValue
            + _previousValue + _previousValue + _previousValue + _previousValue
            + _previousValue + _previousValue;
    }
}
