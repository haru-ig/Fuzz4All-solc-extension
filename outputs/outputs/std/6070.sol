pragma solidity ^0.8.0;
interface IMath2{
    function squareRoot(uint _n) external view returns (uint);
    function modularExponentiation(uint _n, uint _k) external view returns (uint);
}
interface IMath3 {
    function squareRoot(uint _n) external view returns (uint);
    function modularExponentiation(uint _n, uint _k) external view returns (uint);
}
interface IArray2 {
    function set(uint _v, uint  _index, uint _elem1, uint _elem2) external;
    function get(uint _index, uint _elem1, uint _elem2) external view returns (uint);
}
interface IArray3 {
    function set(uint _v, uint _index, uint _elem1, uint _elem2, uint _elem3) external;
    function get(uint _index, uint _elem1, uint _elem2, uint _elem3) external view returns (uint);
}
interface IConvert2 {
    function toBytes(uint _num) external pure returns (bytes memory);
    function toString(uint _value, uint _base, uint _offset, uint _length) external pure returns (string memory);
    function toValue(uint _bytes, uint _offset, uint _length) external pure returns (uint);
    function toSigned(uint _num) external pure returns (int);
    function toUnsigned(uint _num) external pure returns (uint);
    function toNumber(uint _num) external pure returns (uint);
}
interface IConvert3 {
    function toBytes(uint _num) external pure returns (bytes memory);
    function toString(uint _value, uint _base, uint _offset, uint _length) external pure returns (string memory);
    function toValue(uint _bytes, uint _offset, uint _length) external pure returns (uint);
    function toSigned(uint _num) external pure returns (int);
    function toUnsigned(uint _num) external pure returns (uint);
    function toNumber(uint _num) external pure returns (uint);
}
contract Array2 is IArrayOf
{
    uint length = 0;
    mapping (uint => mapping
