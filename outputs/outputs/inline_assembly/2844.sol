pragma solidity ^0.8.0;
contract G {
    mapping (bytes32 => uint) public map;
    mapping (address => uint) public addressMap;
    constructor(uint z, uint x) public {
        map[keccak256(abi.encodePacked(z, x))] = x;
        map[keccak256(abi.encodePacked(x, z))] = z;
        addressMap[ address(this) ] = x;
        addressMap[ address(this) ] = x;
    }
    function lookup(uint z, uint x) public view returns (uint) {
        return addressMap[keccak256(abi.encodePacked(z, x))];
    }
}
