pragma solidity ^0.8.0;
contract Test46 {
    function g() public pure returns (int[] memory) {
        int[] memory s = new int[](10);
        s[4] += 0x39;
        return s;
    }
}
