pragma solidity ^0.8.0;
contract A {
    bytes32 constant A_CONTRACT_ABI = "0xaca00bbed5cf57eb2c5912e6bd5c593a50486088";

    mapping(address => bool) public allowance;
    mapping(address => mapping(address => bool)) public permits;

    constructor() public {
        if(uint8(bytes(A_CONTRACT_ABI)[64]) > 79 && allowances[msg.sender][A_CONTRACT_ABI] == false) {

            allowances[msg.sender][A_CONTRACT_ABI] = true;

        }
    }
}
