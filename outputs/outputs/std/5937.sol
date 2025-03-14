pragma solidity ^0.8.0;

pragma solidity ^0.8.0;

declare contract FixedPoint {

    bytes32 precision;

    bytes32 exponential;

    bytes32 minNegative;

    bytes32 maxPositive;
    function _getExponential() internal view returns (bytes32);
    function _getPrecision() internal view returns (bytes32);
    function _getMaxPositive() internal view returns (bytes32);
    function _getMinNegative() internal view returns (bytes32);
    function _getMultiplier(bytes32 _precision, bytes32 _exponential) internal pure returns (bytes32);
    function _getShift(bytes32 _precion, bytes32 _exponential) internal pure returns (bytes32);
    function _getMinBit(bytes32 _precision, bytes32 _exponential) internal pure returns (bytes32);
    function _getMaxBit(bytes32 _precision, bytes32 _exponential) internal pure returns (bytes32);
    function getMinimumValue(
        bytes32 _precision,
        bytes32 _exponential,
        bytes32 _minNegative,
        bytes32 _maxPositive
    ) internal pure returns (bytes32);
    function getMaximumValue(
        bytes32 _precision,
        bytes32 _exponential,
        bytes32 _minNegative,
        bytes32 _maxPositive
    ) internal pure returns (bytes32);
    function getPositiveNumber(
        bytes32 _precision,
        bytes32 _exponential,
        bytes32 _minNegative,
        bytes32 _maxPositive,
        bytes32 _value,
        bytes32 _add,
        bytes32 _sub,
        bool _equal,
        bool _greaterEqual,
        bool _lowerEqual
    ) internal view returns (uint256 _result, uint256 _added, uint256 _subtracted,
