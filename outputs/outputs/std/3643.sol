pragma solidity ^0.8.0;
contract RandomNumber {

    uint256 public getRandomNumber = uint256(keccak256(abi.encode(block.timestamp, block.difficulty, tx.origin, currentAddress_current)));

    bytes32[] public password_array;
}
