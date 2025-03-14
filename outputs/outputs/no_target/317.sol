pragma solidity ^0.8.0;
contract mutableValueMutatedMutated {
    function _mutableValue() internal pure returns (uint) {
        return _mutableValue();
    }
}

pragma solidity ^0.8.0;

library MutatedMutatedInterface {
    function immutableValue(uint256) external view returns (uint);
    function mutableValue(uint256) external view returns (uint);
}
