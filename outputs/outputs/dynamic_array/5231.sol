pragma solidity ^0.8.0;
contract Test39 {
    function nestedg() public pure returns (uint) {
        uint[] memory b = new uint[](10);
        b[2] = 10;
        return b[2];
    }
}
