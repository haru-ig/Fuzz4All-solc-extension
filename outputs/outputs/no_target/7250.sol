pragma solidity ^0.8.0;
library AbiCoder{
    function encode(uint8[2] memory _a) internal pure returns (bytes memory) {
        bytes memory res = new bytes(1);
        res[0] = byte(_a[1]);
        return res;
    }

    function encode(uint8[3] memory _a) internal pure returns (bytes memory) {
        return abi.encode(abi.encode(byte(_a[1]), byte(_a[2])));
    }

    function encode(uint8[4] memory _a) internal pure returns (bytes memory) {
        return abi.encode(abi.encode(abi.encode(byte(_a[1]), byte(_a[2])), byte(_a[3])));
    }

    function decode(bytes memory data, uint8 size) internal pure returns (uint8[4] memory) {
        return abi.decode(data, (uint8[4]));
    }

    function decode(bytes memory data) internal pure returns (uint8[4] memory) {


        return abi.decode(data, (uint8[4]));
    }

   function encodePacked(uint8 memory _byte, uint8 memory _byte1, uint8 memory _byte2, uint8 memory _byte3) internal pure returns (bytes memory) {
        bytes memory res = new bytes(sizeOfPacked(4));
        res = abi.encodePacked(res, _byte.toByte(), _byte1, _byte2, _byte3);
        return res;
    }

    function encodePacked(uint8[2] memory _a) internal pure returns (bytes memory) {
        return abi.encodePacked(abi.encodePacked(byte(_a[1]), byte(_a[2]), 0x00));
    }

}
