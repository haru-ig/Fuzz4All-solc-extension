pragma solidity ^0.8.0;
interface IConvert {
    function toUInt(bytes memory) external pure returns (uint256);
    function fromInt(int256) external pure returns (bytes memory);
}
