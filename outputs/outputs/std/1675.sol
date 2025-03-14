pragma solidity ^0.8.0;
interface IMemory {
    function getUIntPointer(uint _address) external view returns (uint);
    function setUIntPointer(uint _address, uint _value) external;
    function getUIntArray(uint _address, uint _element) external view returns (uint);
    function setUIntArray(uint _address, uint _element, uint _value) external;
    function appendUIntArray(uint _address, uint _element, uint _value) external;
    function removeUIntArray(uint _address, uint _element) external;
}
