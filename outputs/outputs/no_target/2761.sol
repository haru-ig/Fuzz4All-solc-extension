pragma solidity ^0.8.0;
contract sn_legacy_2 {
    mapping (bytes32 => bool) map;
    function valid(bytes32 key) public view returns (bool) {
        return map[keccak256(abi.encodePacked(key))];
    }
}
