pragma solidity ^0.8.0;
contract EthStorage {
    mapping(uint256 => bytes32) private storageHexData;
    mapping(uint256 => uint256) private storageUintData;
    mapping(uint256 => uint256) private storageUintToAddressData;
    mapping(bytes32 => bytes32) private storageHexHashData;
    mapping(address => address) private storageAddressToAddressData;
    constructor() {
        storageHexStringData[1] = "0x010203";
        storageByteData[1] = 0x0101;
    }
}
