pragma solidity ^0.8.0;
contract ImmutableMutatedMutated {
    function _immutableValue() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previousValue;
    function balance() public view returns (uint) {
        _previousValue + _previousValue + _previousValue + _previousValue + _previousValue
            + _previousValue + _previousValue + _previousValue + _previousValue;
    }
}
