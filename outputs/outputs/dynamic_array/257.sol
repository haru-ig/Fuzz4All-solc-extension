pragma solidity ^0.8.0;
contract C11 {
    constructor(uint256 x) {}
    function r(uint256[] memory y) public {
        uint256 z = m(2);
        z = m(3, z);
        z = m(4, z);
        z = m(5, z);
        z = m(6, z);
        z = m(7, z);
        z = m(8, z);
        z = m(9, z);
    }
    function m(uint256 y, uint256 z) public pure returns (uint256) {
        return y * 2 * z;
    }
}
