pragma solidity ^0.8.0;
contract EthStorage {
    mapping(bytes32 => uint256[]) storage hashArrays;
    mapping(uint256 => bytes32[]) internal hashArrays2;
    event HashArray(uint256 indexed idx, bytes32 value);
    constructor() {
    }
}
