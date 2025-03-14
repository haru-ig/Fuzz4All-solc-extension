pragma solidity ^0.8.0;
contract ImmutableMutatedImmutable2 {
    function _immutableValue() internal pure returns (uint) {
        return 100;
    }
    uint public immutable _previousValue;
    function balance() public view returns (uint) {
        _previousValue + _previousValue + _previousValue + _previousValue + _previousValue
            + _previousValue + 5 + _previousValue + _previousValue + _previousValue;
    }
}
