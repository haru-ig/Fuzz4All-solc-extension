pragma solidity ^0.8.0;
contract G {
    uint256[3] x = [ 1, 2, 3 ];
    constructor(uint256[3] memory input, uint arg) public {
         uint256[3] memory _last = x;
         uint256[4] memory next;
         uint256[4] memory memoryTemp = x;
         next[2] = memoryTemp[2];
         next[1] = memoryTemp[1];
         next[0] = memoryTemp[0];



    }
}
