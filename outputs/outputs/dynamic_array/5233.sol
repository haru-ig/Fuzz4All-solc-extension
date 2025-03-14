pragma solidity ^0.8.0;
contract Test38 {
    function nestedf() internal pure returns (int[] memory) {
        int[] memory b = new int[](10);
        b[2] = 10;
        return b;
    }
}
