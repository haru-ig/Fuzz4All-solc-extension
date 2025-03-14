pragma solidity ^0.8.0;
contract sn_legacy {
    mapping (bytes32 => address) map;
    function valid(address key) public view returns (bool) {
        return map[keccak256(abi.encodePacked(key))];
    }
}
