pragma solidity ^0.8.0;
contract Convert {
    function stringToUint(string memory str) public pure returns (uint256) {
        bytes memory b = abi.encodePacked(str);
        return uint256(bytes2int(b));
    }
    function bytes2int(bytes memory b) public pure returns (uint256) {
        uint256 result = 0;
        uint256 len = b.length;
        for (uint256 i = 0; i < len; i++) {
            result += int(b[i]) * (uint256(Math.pow(256, len - i - 1)));
        }
        return result;
    }
}
