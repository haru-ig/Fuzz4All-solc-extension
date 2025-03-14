pragma solidity ^0.8.0;
contract Test39 {
    function g() public pure returns (int[] memory) {
        int[] memory s = new int[](1);
        s[1] = 0x02;
        return s;
    }
}
