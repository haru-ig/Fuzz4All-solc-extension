pragma solidity ^0.8.0;
interface ArrayInterface {
    function isInitialized() external view returns (bool);
    function getLength() external view returns (uint);
    function getUInt(uint index) external view returns (uint);
    function getUIntArray(uint index) external view returns (uint[]);
    function getUInt256(uint index) external view returns (uint256);
    function getUInt256Array(uint index) external view returns (uint256[]);
    function getBytes(uint index) external view returns (bytes memory);
    function getByteArray(uint index) external view returns (bytes memory[]);
    function getAddress(uint index) external view returns (address);
    function getAddressArray(uint index) external view returns (address[]);
    function getInt256(uint index) external view returns (int256);
    function getInt256Array(uint index) external view returns (int256[]);
    function getBool(uint index) external view returns (bool);
    function getBoolArray(uint index) external view returns (bool[]);
}

pragma solidity ^0.8.0;
contract ArrayInterface {
    function getUInt(uint index) public view returns (uint);
    function getUInt256(uint index) public view returns (uint256);
    function getUInt128(uint index) public pure returns (uint128);
    function getUIntArray(uint index) public view returns (uint[]);
    function getUintArray256(uint index) public pure returns (uint256[]);
    function getInt(uint index) public view returns (int);
    function getInt16(uint index) public view returns (int16);
    function getInt8(uint index) public view returns (int8);
    function getIntArray(uint index) public view returns (int[]);
    function getInt256Array(uint index) public pure returns (int256[]);
    function getBool(uint index) public view returns (bool);
    function getBoolArray(uint index) public view returns (bool[]);
}
pragma solidity ^0.8.0;
contract ArrayInterface {
    function getUInt256Array(uint index) public view returns (uint256[]);
    function getInt256Array(uint index) public view returns (int256[]);
    function getUIntArray256(uint index) public view returns (uint256[]);
    function getIntArray(uint index) public view returns (int[]);
    function getBoolArray(uint index) public view returns (bool[]);
}
