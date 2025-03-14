pragma solidity ^0.8.0;

contract Mem_ {
    uint public value;
    uint _1;
    uint _2;
    uint _3;
    uint _4;
    uint _5;
    uint _6;
    uint _7;
    uint _8;
    uint _9;
}

contract Convert {

    uint internal constant _10000 = 10000;

    function toUint(uint a) pure internal returns(uint result) {
        result = a;
    }
    function toUint(uint a, uint b) pure internal returns(uint result) {
        result = (a * b);
    }
}

contract Random {
    bytes32 private _seed;
    mapping(address => uint) private _accounts;

    constructor(bytes32 seed) {
        _seed = seed;
    }

    function uint(uint a) internal returns(uint) {
        uint result = 0;
        assembly {
            asm {
                result := mload(add(a, 0x20))
            }
        }
        return result;
    }

    function seed(address adr) {
        _accounts[adr] = 0;
    }

    function setSeed(bytes32 s) {
        _seed = s;
    }

    function random(uint max) internal view returns(uint) {
        require(max > 0, "max must be > 0");
        uint v = uint(keccak256(abi.encodePacked(_seed, uint(keccak256(abi.encodePacked(uint(keccak256(abi
