pragma solidity ^0.8.0;
contract TestArrayInterface {

    function getA() public pure virtual returns (uint32[] memory);
    function getByte() public pure virtual returns (bytes32[] memory);
    function getUint32() public pure virtual returns (uint32[] memory);
    function getUint64() public pure virtual returns (uint64[] memory);
    function getAll() public pure virtual returns (uint8[] memory);
    function getBytes32() public pure virtual returns (bytes32[] memory);
    function getAll32() public pure virtual returns (uint32[] memory);
    function getInt8() public pure virtual returns (int8[] memory);
    function getInt16() public pure virtual returns (int16[] memory);
    function getInt32() public pure virtual returns (int32[] memory);
    function getInt64() public pure virtual returns (int64[] memory);
    function getAll8() public pure virtual returns (uint8[] memory);
    function getAll16() public pure virtual returns (uint16[] memory);
    function getAll32() public pure virtual returns (uint32[] memory);
    function getAll64() public pure virtual returns (uint64[] memory);
}
