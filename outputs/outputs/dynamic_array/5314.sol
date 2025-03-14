pragma solidity ^0.8.0;
contract Test8 {
    constructor(uint256[2][address] memory) public {
        uint256[2] storage a = new uint256[2];
        uint256 storage b;
        uint256 x;
        {
            uint256[2] storage c = new uint256[2];
            uint256 storage dx = new uint256(5555);
        }
    }
}
