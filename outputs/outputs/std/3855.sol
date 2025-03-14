pragma solidity ^0.8.0;
interface IConvert {
    function toDecimal(uint256 _value) external view returns (uint256 _decimal);
}
