pragma solidity ^0.8.0;
contract Test39 {
    function nested() internal pure returns (uint[] memory) {
        uint[] memory b = new uint[](10);
        b[2] = 10;
        return b;
    }
}
