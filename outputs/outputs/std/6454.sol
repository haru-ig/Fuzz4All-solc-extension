pragma solidity ^0.8.0;
interface Convert {
    function toDecimal(uint256 x) public pure returns (uint128);
    function fromDecimal(uint128 x) public pure returns (uint256);
    function toPercent(uint256 x) public pure returns (uint128);
    function fromPercent(uint128 x) public pure returns (uint256);
}
