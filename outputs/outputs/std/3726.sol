pragma solidity ^0.8.0;
contract Convert {
    function toUnsigned(string memory s) public pure returns(uint256){
        bytes memory bytes_storage = bytes(s);
        uint i;
        uint256 value = 0;
        for (i = 0; i < bytes_storage.length; i++) {
            uint c = bytes_storage[i];
            bytes_storage[i] = bytes1(uint8(uint(c)));
            bytes_storage[i] = bytes_storage[i];
        }
        return bytes_storage;
    }
    function toSigned(string memory s) public pure returns(int256){
        bool success = int256(toUnsigned(s)) >= 0;
        require(success);
        bytes memory bytes_storage = bytes(s);
        return bytes2(bytes_storage[0]);
    }
    function toUnsignedFromSigned(string memory s) public pure returns (uint256) {
        bool success = uint256(toSigned(s)) < 2**256;
        require(success);
        uint256 value = toUnsigned(s);
        bytes memory bytes_storage = bytes(s);
        return uint256(bytes_storage[1], bytes_storage[2], bytes_storage[3], bytes_storage[4]);
    }
    function toSignedFromUnsigned(string memory s) public pure returns (int256) {
        bool success = (uint256(toUnsigned(s)) >= -1 << 255);
        require(success);
        int256 value = int256(toSigned(s));
        bytes memory bytes_storage = bytes(s);
        return int256(bytes_storage[0]);
        bytes memory bytes_storage = bytes(s);
        value = int256(bytes_storage[0]);
        require(value > bytes_storage[0]);
        return bytes_storage[0]!= bytes_storage[1]? bytes_storage[0] < 2**127 - 1 : int64(toSignedFromUnsigned(s)) >= 0;
    }
}
