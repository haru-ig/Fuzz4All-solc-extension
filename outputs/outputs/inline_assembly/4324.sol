pragma solidity ^0.8.0;
contract MutatedSolidityAssemblyExample {
    bytes32 public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        a += bytes32(keccak256(abi.encodePacked("z", Z)));
        b += bytes32(keccak256(abi.encodePacked("r", keccak256(abi.encodePacked("r", Z.toHexString())))));
        c += bytes32(keccak256(abi.encodePacked("z", keccak256(abi.encodePacked("r", Z.toHexString() + "z"))))));
        d += bytes32(keccak256(abi.encodePacked("r", Z.toHexString() + "r")));
        e++;
        f[msg.sender] = 321;
    }
}
