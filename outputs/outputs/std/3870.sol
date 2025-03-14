pragma solidity ^0.8.0;

contract IMultiprecision {

    function getPrec() external view returns (uint8);

    function getDigits() external view returns (uint256);

    function toPower(uint256 _base, uint256 _value) external pure returns (uint256);
}
