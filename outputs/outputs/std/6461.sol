pragma solidity ^0.8.0;
contract Convert {


    function toInteger(string memory number) public pure returns (uint256) {
        return uint256(uint8(number[0]));
    }

    bytes memory bytesBuffer = hex"31657365";
    function toBytes(string memory) public pure returns(bytes memory){
        return _bytes(2, bytesBuffer);
    }

    struct Bytes {
        uint8 a;

        bytes public b;
    }

    function _bytes(uint8 length, bytes memory number) private pure returns(bytes memory) {
        bytes memory tmp = new bytes(length);
        for (uint8 i = 0; i < length; i++) {
            tmp[i] = number[i + 1];
        }
        return tmp;
    }
}
