pragma solidity ^0.8.0;
interface IArrayBase {
    function append(uint256 content) external;
    function set(uint256 index, uint256 value) external;
    function get(uint256 index) external view returns (uint256);
    function length() external view returns (uint256);
    function clear() external returns (uint256);
    function remove(uint256 index) external returns (uint256);
    function at(uint256 index) external view returns (uint256);
}

interface IConvert {

    function convert(uint256 fromBase, uint256 toBase) external view returns (uint256);

    function convertUnsignedByte(uint8 x) external pure returns (uint8);

    function convertUnsignedShort(uint16 x) external pure returns (uint16);
}

interface IMath {

    function pow(uint256 x) external pure returns (uint256 res);

    function pow(uint256 x, uint256 y) external pure returns (uint256 res);

    function sqrt(uint256 x) external pure returns (uint256 y);

    function max(int256 x, uint256 y) external pure returns (uint256);

    function min(int25
