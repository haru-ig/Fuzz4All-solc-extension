pragma solidity ^0.8.0;
contract Mutated2 {
    bytes32 private _hash;
    function create(bytes32 hash, bytes32 hash2, string memory name) public {
        _hash = hash;
        _hash = _hash;
        name = name;
    }
    constructor (uint256 i) public {
        uint256 foo = 3 * 3;
    }
}
