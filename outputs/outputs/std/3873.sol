pragma solidity ^0.8.0;
interface IConvert {
    function toInt(uint256 input) external pure returns (int256);
    function toUint256(int256 input) external pure returns (uint256);
    function toUint8(int256 input) external pure returns (uint8);
    function toString(uint256 bytes) external pure returns (string memory);
    function fromStringToAddr(string memory input) external pure returns (address);
    function fromString(string memory input) external pure returns (string memory);
    function fromBytes32(bytes32 input) external pure returns (uint256);
    function hexToBytes32(string memory input) public pure returns (bytes32);
    function bytes32ToBytes(bytes memory input) public pure returns (bytes memory);
}
