pragma solidity ^0.8.0;
bytes32 public constant myUint;
bytes32 private constant myBytes32;
mapping(uint32 => uint) public myMapping;
contract ArrayMemory
{
}
contract Array
{
    uint[] public numbers;
}
contract ArrayMutators
{
}
contract Convert
{
    bytes32 public myUint;
    bytes32 private myBytes32;
    constructor () { myUint = 153; myBytes32 = 0x1234567890abcdef123456789abcdefABCDEF1234567890abcdefABCDEF1234567890abcdefABCDEF1234567890abcdefABCDEF1234567890abcdefABCDEF1234567890a}
    function convertUintToBytes32(uint32 x) public pure returns (bytes32) { return bytes32(uint(x)); }
    function convertBytes32ToUint(bytes32 x) public pure returns (uint32) { return uint32(x); }
    function convertUintToBytes32(uint32 x) public pure returns (bytes32 y) { y = convertUintToBytes32(x); }
    function convertBytes32ToUint32(bytes32 x) public pure returns (uint32 y) { y = convertBytes32ToUint(x); }
    function convertUintToNumber(uint32 x) public pure returns (uint y) { y = uint(convertUintToUint32(x)); }
    function convertNumberToUint(uint x) public pure returns (bytes32 y) { y = convertNumberToUint32(uint32(x)); }
}
contract Math
{
}
contract Memory
{
    address x;
    uint[] y;
    uint8[] z;
    uint8 yz;
    assembly { yz := 0 }
}
contract Multiprecision
{
    bytes32 public x;
    bytes32 private y;
    constructor () { y = 10; }
    function add(uint a, uint b) public pure returns (uint c) { c = a + b; }
    function sub(uint a, uint b) public pure returns (uint c) { c = a - b; }
    function mul(uint a, uint b) public pure returns (uint c) { c = a * b; }
    function div(uint a, uint b) public pure returns (uint c) { c = a / b; }
    function mod(uint a, uint b) public pure returns (uint c) { c = a % b; }
    function comp(uint a, uint b, uint c, uint d) public pure returns (bool z) { return z = (a == b + c) || (a == b + d) || (a == c + d); }
    function compBytes32(bytes32 a, bytes32 b, bytes32 c, bytes32 d) public pure returns (bool z) { bytes32 s = add(
