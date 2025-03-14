pragma solidity ^0.8.0;
contract NonMutatingSemanticEquivalence
{
    constructor() { revert(); }
    function createAddressFromData(uint8[64] memory _data) public pure returns (address) { revert(); }
    function createBoolFromData(uint8[5] memory _data) public pure returns (bool) { revert(); }
    function createUint256FromData(uint8[256] memory _data) public pure returns (uint256) { revert(); }
    function createUint8FromData(uint8[8] memory _data) public pure returns (uint8) { revert(); }
    function createUnsignedData(uint8 _data) public pure returns (uint) { revert(); }
    function createSignedData(uint256 _data) public pure returns (int) { revert(); }
    function createStorageData(uint256[5] memory _data) public pure returns (storage) { revert(); }
}
contract Caller
{
    constructor(address _receiver) public { }
    receive() external payable {
        _receiver.transfer(msg.value);
    }
}
