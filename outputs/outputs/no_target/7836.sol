pragma solidity ^0.8.0;

contract TestMutator {
    function getZero() private view returns (uint40) {
        return 0;
    }
    function getPositive() private view returns (uint40) {
        return _getPositive();
    }
    function getNegative() private view returns (uint40) {
        return _getNegative();
    }
    function getPositiveSigned() private view returns (int) {
        return _getPositiveSigned();
    }
    function getNegativeSigned() private view returns (int) {
        return _getNegativeSigned();
    }
    function _getPositive() private pure returns (uint40) {
        return 1;
    }
    function _getNegative() private pure returns (uint40) {
        return -1;
    }
    function _getPositiveSigned() private pure returns (int) {
        return 1;
    }
    function _getNegativeSigned() private pure returns (int) {
        return -1;
    }
}
