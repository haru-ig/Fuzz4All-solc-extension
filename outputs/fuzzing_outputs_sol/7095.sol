pragma solidity ^0.8.0;
contract NotCallableCaller {
    uint256 private constant MAX_LENGTH = 8;
    bytes32 private randomData = bytes32(keccak256(abi.encodePacked("This is a random string. Long random string is not supported.")));
    function length() public pure returns (uint256) {
        return uint256(randomData.length);
    }
    function randomBytes(uint256 length) public pure returns (bytes32) {
        bytes memory r = new bytes(length);
        for (uint256 i = 0; i < length; i++) {
            r[i] = bytes1(randomData[i % randomData.length]);
        }
        return bytes32(abi.encode(r));
    }
    function bytesEquals(bytes memory a, bytes memory b) public pure returns (bool) {
        return keccak256(a) == keccak256(b);
    }
    function bytesCompare(bytes memory a, bytes memory b) public pure returns (int) {
        return keccak256(a).compareTo(keccak256(b));
    }
}
