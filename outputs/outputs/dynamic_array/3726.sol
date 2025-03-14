pragma solidity ^0.8.0;
contract E is D {
    uint256[5][3][12] f;
    uint w;
    uint256 h;
    constructor(uint256[5][3][12] memory m) public {
        f = m;
    }
    function getH() public view returns (uint256) {
        return h;
    }
}
