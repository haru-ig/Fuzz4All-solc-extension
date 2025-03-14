pragma solidity ^0.8.0;
contract Test48 {
    function g() public pure returns (int[] memory) {
        int[] memory s = new int[](-32);
        s[5] = 0;
        return s;
    }
}
