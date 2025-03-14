pragma solidity ^0.8.0;
contract Emulator {
mapping(bytes32 => string) private _contractName;
    constructor() public {

        _setContractName("Init_20211119_352430", "Init");
    }
    function setContractName(bytes32 key, string memory value) public {
        _setContractName(key, value);
    }
    function name() view public returns(bytes32 key, string memory value){
      bytes32 key = keccak256(abi.encodePacked(byte(0), _contractName[bytes32(keccak256(abi.encodePacked(key, byte(0))))]));
      value = _contractName[bytes32(keccak2
