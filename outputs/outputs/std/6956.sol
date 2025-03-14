pragma solidity ^0.8.0;
interface EthStorageInterface {
    function writeArray(uint256 id, uint256[] memory arr) public;
    function writeHash(uint256 id, bytes32[] memory hash) public;
    mapping(uint256 => uint256[]) public readArray;
    mapping(uint256 => bytes32[]) public readHash;
}
