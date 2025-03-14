pragma solidity ^0.8.0;
contract SemanticallyEquivalentToConstantAccessBlock07 {
    function test() public returns (bool) {
        bool _var = 0x7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e == bytes32(uint256(uint256(keccak256(abi.encodePacked(0xc0de000000000000c0de0000000000000)))) - uint256(uint256(keccak256(abi.encodePacked(0x40)))) + uint256(uint256(keccak256(abi.encodePacked(0x20000000000000000000000000000000c0de00000000000000)))));
        return _var;
    }
}
