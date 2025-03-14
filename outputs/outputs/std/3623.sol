pragma solidity ^0.8.0;
contract Convert {
    bytes32 private hexStringToBytes32(string memory _string) internal pure returns (bytes32) {
        if (_string.length == 0) {
            return 0x0;
        }

        bytes memory bytesString = bytes(_string);
        bytes32 bytes32String = 0x0;
        for (uint j=0; j < bytesString.length; j++) {
            bytes32 charCode = bytesString[j];
            bytes32String = bytes32String | bytes32(uint8(charCode));
        }
        return bytes32String;
    }
    bytes32 private _base58StringToSolidityBytes32(string memory s) internal pure returns (bytes32) {
        require(bytes(s).length < 100000, "string cannot be > 1K");
        uint8[] memory data = stringToBytes(s);
        bytes32 ret = keccak256(abi.encodePacked(data[0], data[1], data[2], data[3], data[4], data[5]));
        for (uint i = 6; i < data.length; i++) {
            ret = (mix(ret, data[i])).add(ret);
        }
        return ret;
    }
    bytes memory byte2bytes32(uint8 x) internal pure returns (bytes32) {
        bytes memory bytes32 = new bytes(4);
        bytes32[3] memory b32;
        b32[0] = bytes32(uint(x) & 0xff);
        b32[1] = bytes32(uint(x >> 8) & 0xff);
        b32[2] = bytes32(uint(x >> 16) & 0xff);
        b32[3] = bytes32(uint(x >> 24) & 0xff);
        return bytes32;
    }
    bytes2 private _bytesTo2bytes2(bytes32 _buffer) internal pure returns (bytes2) {
        return bytes2(uint(_buffer) >> 8);
    }
    bytes32 private _bytesTo3bytes32(bytes32 _buffer) internal pure returns (bytes32) {
        return uint32(_buffer);
    }
    uint8[] private _intToBytes8(uint8 _i) private pure returns (uint8[]) {
        uint8[] memory res = new uint8[](2);
        res[0] = _i;
        res[1] = 0;
        return res;
    }
    uint32[] private _intToBytes32(uint32 _i)
