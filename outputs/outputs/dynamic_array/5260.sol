pragma solidity ^0.8.0;
contract A {
    function f() public pure virtual returns (int[] memory) {
        int[] memory s = new int[](10);
        s[2] += 0x39;
        return s;
    }
}
