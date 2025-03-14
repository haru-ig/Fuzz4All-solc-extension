pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    bytes32 private _lastHash;
    constructor () {
        assembly {
            mstore(0, 0x6000000000000000000000000000000000000000000000000000000000000)
        }
    }

    function computeAndStoreHash() public returns (bytes32) {
        bytes32 h = computeHash();
        if (keccak256(abi.encodePacked(h)) == _lastHash) return h;

        assembly {
            mstore(0, h)
            _lastHash := h
        }
        return h;
    }

    function computeHash() pure returns (bytes32) {
        bytes32[21] memory buffer;
        uint length = buffer.length;
        uint[122] memory memory0;

        assembly {

            length := 30000

            for { } lt(0, length) {
