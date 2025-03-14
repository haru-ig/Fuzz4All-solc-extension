pragma solidity ^0.8.0;
interface IConvert {
    function toInt(string calldata s) external pure returns (uint);
    function toUnsigned(uint x) external pure returns (uint);
    function toUnsigned(string calldata s) external pure returns (uint);
}
interface IMath {
    function squareRoot(uint x) external pure returns (uint);
    function modularExponentiation(uint x, uint p, uint m) external pure returns (uint);
}
interface IMemory {
    function get(uint x) external view returns (uint);
}
interface IMultiprecision {
    function add(uint x, uint y) external pure returns (uint);
    function add(uint x, uint y, uint carry) external pure returns (uint);
    function add(uint x, uint y, uint carry, uint overflow) external pure returns (uint);
    function sub(uint x, uint y) external pure returns (uint);
    function sub(uint x, uint y, uint carry) external pure returns (uint);
    function sub(uint x, uint y, uint carry, uint overflow) external pure returns (uint);
    function mul(uint x, uint y) external pure returns (uint);
    function div(uint a, uint b) external pure returns (uint);
    function divS(uint a, uint b) external pure returns (uint);
    function divM(uint a, uint b, uint m) external pure returns (uint);
    function mod(uint a, uint b) external pure returns (uint);
    function modS(uint a, uint b) external pure returns (uint);
    function modM(uint a, uint b, uint m) external pure returns (uint);
    function divAdd(uint a, uint b, uint carry) external pure returns (uint);
    function modAdd(uint a, uint b, uint carry) external pure returns (uint);
    function addM(uint x, uint y, uint m) external pure returns (uint);
    function subM(uint x, uint y, uint m) external pure returns (uint);
    function mulM(uint x, uint y, uint m) external pure returns (uint);
    function modDiv(uint x, uint y, uint m) external pure returns (uint);
    function modDivS(uint x, uint y, uint m) external pure returns (uint);
    function modSquareRoot(uint x, uint m) external pure returns (uint);
}
