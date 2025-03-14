pragma solidity ^0.8.0;
contract SimpleY5 {
    mapping(bytes256 => string) public bytes_storage;
    mapping(uint256 => uint256) public uint256_storage;
    mapping(uint256 => uint256) public uint256_storage2;
    function set(bytes32 key, string memory value) public {
        bytes_storage[key] = value;
    }
    function setU256(uint256 key, uint256 value) public {
        uint256_storage[key] = value;
    }
    function setU256(uint256 key1, uint256 key2, uint256 value) public {
        uint256_storage2[key1] = value;
        uint256_storage2[key2] = value;
    }
    function inc(uint256 x) public view returns (uint256){
        return (((1 * uint256_storage2[x]) * (1 / uint256_storage2[x])) + uint256_storage2[x] * (!key.sub(x)));
    }
}
