pragma solidity ^0.8.0;
contract Convert {
    bytes32 private alphabetBytes32 = keccak256("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789");

    function randomBytes(uint256 length) public view returns (bytes memory) {
        bytes memory bs = new bytes(length);
        uint256 position;
        for (position = 0; position < bs.length; position++) {
            bs[position] = alphabetBytes32[uint256(keccak256(uint8(blockhash(block.number - position)))));
        }
        return bs;
    }
    function parseInt(bytes32 str) public pure returns (uint256) {
        bytes memory buffer = bytes(str);
        uint256 startIndex = 0;
        uint256 endIndex = buffer.length;
        while (endIndex - startIndex >= 1 && buffer[startIndex] > 47) {
            startIndex++;
        }
        return stringToUint(uint256(buffer.substr(startIndex, end
