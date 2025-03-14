pragma solidity ^0.8.0;
contract sn_legacy {
    mapping (address => bytes32) mappings;
    function lookup(address a) public view returns (bytes32) {
        return mappings[a];
    }
}
