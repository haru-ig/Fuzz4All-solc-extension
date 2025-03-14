pragma solidity ^0.8.0;
contract C8 {
    constructor(uint256 x) public {
        uint256[] memory x = new uint256[](x);
        uint x0;
        for (uint i = 0; i < x.length; ++i) {
            x0 += x[i];
        }
    }
}
