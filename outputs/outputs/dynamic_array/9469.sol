pragma solidity ^0.8.0;
contract MutatedArrays {
    constructor(string memory _str) public {
        string memory v = uint64ToString(_str.length).toString();
        uint64ToString(uint160(uint256(keccak256(abi.encodePacked(v))))).to.to;
    }
}
