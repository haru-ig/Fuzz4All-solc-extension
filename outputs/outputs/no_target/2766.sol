pragma solidity ^0.8.0;
contract sn_solidity {
    mapping (bytes32 => bool) map;

    constructor() public { map[keccak256(abi.encodePacked(42))]; }

    function valid2() public view returns (bool) {
        return true;
    }

    function valid(bytes32 key) public view returns (bool) {
        map[keccak256(abi.encodePacked(key))];
        return true;
    }
}
