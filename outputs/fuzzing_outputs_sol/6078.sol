pragma solidity ^0.8.0;
contract EtherTester {
    constructor () { require(keccak256(abi.encodePacked(msg.data, address(this))), "EIP712"); }
}
