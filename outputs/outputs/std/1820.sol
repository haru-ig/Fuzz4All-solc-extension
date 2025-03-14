pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract SolidityExample4Bytes {
    function encodeValue(uint8 x) internal pure returns (bytes memory) {
        return abi.encode(x);
    }
    function encodeArray(uint[] memory x) internal pure returns (bytes memory) {
        return abi.encodePacked(x);
    }
}*/
