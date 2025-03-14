pragma solidity ^0.8.0;
contract sn_solidity {
    mapping (address => bool) map;
    function valid(address key) public view returns (bool) {
        map[key];
        return true;
    }
