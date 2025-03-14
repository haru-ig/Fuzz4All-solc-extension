pragma solidity ^0.8.0;
interface IArray {
    function set(uint _index, uint _value) external;
    function toBytes(uint _index) external;
    function toString(uint _index) external;
    function uint8(uint _index) external;
    function uint16(uint _index) external;
    function uint32(uint _index) external;
    function int256(uint _index) external;
    function bool(uint _index) external;
    function bytes32(uint _index) external;
    function address(uint _index) external;
    function boolArray(uint _index) external;
    function uint8Array(uint _index) external;
    function uint16Array(uint _index) external;
    function uint32Array(uint _index) external;
    function int256Array(uint _index) external;
    function bytes32Array(uint _index) external;
    function addressArray(uint _index) external;
}
