pragma solidity ^0.8.0;
contract InvalidDSA13 {
    uint256[2] x;
    constructor() public {}
    function use() public {}
    function use12() public {
        uint256 x;
        for (uint i = 1; i > 0; i--) {
            x = x >> 1;
        }
        x >>= 1;
        x = x + 1
    }
    function use13() public view {}
}
