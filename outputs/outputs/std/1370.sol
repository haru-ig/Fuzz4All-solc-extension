pragma solidity ^0.8.0;
contract Convert {
    function intToBytes(int value) internal pure returns (bytes memory) {
        bytes memory buff = new bytes(4);
        bytes1 b1 = bytes1(uint8(value));
        uint256 b1i = uint256(b1);
        buff[0] = byte(uint8(128 + b1i));
        buff[1] = byte(uint8(b1i));
        buff[2] = byte(uint8(b1i >> 8));
        return buff;
    }
    function bytesToInt(bytes memory data) internal pure returns (int) {
        bytes memory buff = data;

        return (data[0] * 256 +
                (uint256(buff[1]) * 256) +
                (uint256(buff[2]) * 256 * 256));
    }
}
