pragma solidity ^0.8.0;
library Convert {
    function bytesToUint8Array(bytes memory _bytes) internal pure returns (uint8[] memory) {
        uint8[] memory _result = new uint8[](_bytes.length / 2);
        bytes memory bytesStr = _bytes;
        for (uint256 i = 0; i < bytesStr.length; i = i + 2) {
            bytes1 b1 = bytes1(uint8(bytesStr[i] + bytesStr[i + 1]));
            _result[i / 2] = uint8(b1);
        }
        return _result;
    }
    function uint8ArrayToBytes(uint8[] memory _uint8Array) internal pure returns (bytes memory) {
        bytes memory _result = new bytes(_uint8Array.length * 2);
        for (uint256 i = 0; i < _uint8Array.length; i ++) {
            bytes1 b1 = bytes1(_uint8Array[i]);
            bytes1 b2 = bytes1(uint8(bytes1(0xff - i) + b1));
            _result[ i * 2 + 0] = uint8(b1);
            _result[ i * 2 + 1] = uint8(b2);
        }
        return _result;
    }
}
