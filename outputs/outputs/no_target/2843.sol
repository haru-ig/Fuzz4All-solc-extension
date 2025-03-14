pragma solidity ^0.8.0;
contract newStorage {
    bytes public b;
    constructor() {
        b = keccak256(abi.encodePacked("testing"));
    }
    function set(bytes memory _value) public {
        b = _value;
    }
    function get() public view returns (bytes) {
        return b;
    }
}
