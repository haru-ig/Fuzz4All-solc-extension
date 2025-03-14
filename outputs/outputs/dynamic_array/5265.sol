pragma solidity ^0.8.0;
contract Test47 {
    function f() external pure returns (int[] memory) {
        int[] memory s;
        for (uint i = 0; i < s.length; ++i) {
            s[i] += 0x39;
        }
        return s;
    }
}
