pragma solidity ^0.8.0;

contract Array {

    bytes32 private constant LENGTH = 0x00;

    bytes32 private constant STORAGE_SIZE = 0x20;

    bytes32 private constant READ_ARRAY_OFFSET = 0x20;

    bytes32 private constant SIZE_LIMIT = 0x1000;

    bytes32 private constant ADDITIONAL_LENGTH = 0x20;

    bytes32 private constant ELEMENTS_PER_ARRAY = 0x10;

    bytes32 private constant READ_INT_OFFSET = 0x20;

    bytes32 private constant INT_LIMIT = 0x00;

    bytes32 private constant INT_BYTE_OFFSET = 0x00;

    bytes32 private constant BYTE_LIMIT = 0x00;


    function LENGTH(address storageArray) internal pure returns (bytes32) {
        return bytes32(uint(storageArray.length) - uint(bytes1(storageArray)));
    }

    bytes32 private copy(bytes32 src, bytes memory dest);

    function STORAGE_LOCATION(address storageArray, bytes memory data) internal view returns (address storage) {
        return address(uint256(storageArray) - uint256(data) + READ_ARRAY_OFFSET);
    }

    function STORAGE_LENGTH(address storageArray) internal view returns (bytes32) {
        return bytes32(uint(storageArray) + LENGTH - uint(storageArray));
    }


    address[] public array;
