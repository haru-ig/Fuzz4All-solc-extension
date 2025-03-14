pragma solidity ^0.8.0;
contract MutatorOld
{
    bytes32 public hashA;
    bytes32 public hashB;
    uint public originalA;
    uint public originalB;
    function increaseA(uint x) public {
        hashA = keccak256(abi.encodePacked(hashA, x, A));
        A += x;
    }
    function increaseB(uint x) public {
        hashB = keccak256(abi.encodePacked(hashB, x, B));
        B += x;
    }
    function subtractB(uint x) public {
        hashB = keccak256(abi.encodePacked(hashB, x, B));
        B -= x;
    }
    function subtractA(uint x) public {
        hashA = keccak256(abi.encodePacked(hashA, x, A));
        A -= x;
    }
    function multiplyB(uint x) public {
        hashA = keccak256(abi.encodePacked(hashA, x, A));
        B -= x;
    }
}
