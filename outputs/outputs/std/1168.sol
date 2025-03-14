pragma solidity ^0.8.0;
contract B2_Convert_v2 {



    function uintToBytes(uint _n) pure public returns (bytes memory) {
        uint n = _n;
        bytes memory bytes = new bytes(32);
        for (uint8 i = 0; i < 32; i++) {
            bytes[i*2] = bytes32ToAddress(uintToAddress(n >> (8*(31-i)))));
            bytes[i*2+1] = bytes32ToAddress(uintToAddress(bytes32(n) & (0xffffffff << (8*(31-i)))));
        }
        return bytes;
    }

    function uintToAddress(uint _n) pure public returns (bytes32) {
        uint n = _n;
        if (n >= address(0)) return uint256ToBytes32(n);
        bytes memory bytes = new bytes(32);
        for (uint8 i = 0; i < 32; i++) {
            bytes[i] = uint256ToBytes32(address(bytes) >> (8*(31-i)));
        }
        bytes memory bytes_tmp = new bytes(32);
        for (uint8 j = 0; j < 32; j++) {
            bytes_tmp[j] = bytes32ToAddress(address(bytes) >> (8*j));
        }
        return (uintToBytes32(uint8ToBytes(n)) ^ uintToBytes32(bytes_tmp));
    }

    function addressToBytes(address _n) pure public returns (bytes memory) {
        bytes memory bytes = new bytes(32);
        for (uint8 i = 0; i < 32; i++) {
            bytes[i*2] = addressToUint(bytes32ToAddress(_n));
            bytes[i*2+1] = addressToUint(bytes32ToAddress(address_tmp(bytes32(_n))));
        }
        return bytes;
    }

    function addressToUint(bytes32 _n) pure public returns (uint) {
        bytes memory bytes = bytes32ToBytes(1);
        for (uint8 i = 0; i < 32; i++) {
            bytes[i] = uint8ToBytes((bytes32(_n) & (0xffffffff << (8*(31-i)))) >> (8*(31-i))));
        }
        if (bytes[31] == 0 || bytes[31] == 0xff) {
            return uint(bytes);
        } else {
            return addressToBytes(bytes);
            return bytes;
        }
    }

    function uintToBytes32(uint _n) pure public returns (bytes32) {
        require(_n >= 0, "Bytes must have at least 1 value!");
        bytes32 b;
        assembly {
            let msb :=
