pragma solidity ^0.8.0;
contract MutatedGeneration9 {
    uint256[3] public x=[300,-65535,-3];
    function add(uint256 y) public {
        uint256[3] memory v = x;
        v[0] += y;
        v[1] += 0;
        v[2] += 0;
    }
    function sub(uint256 y) public {
        uint256[3] memory v = x;
        v[0] -= y;
        v[1] -= 0;
        v[2] -= 0;
    }
}
