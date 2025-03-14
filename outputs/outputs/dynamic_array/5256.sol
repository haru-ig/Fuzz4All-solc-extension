pragma solidity ^0.8.0;
contract Test46 {
    function g() public pure returns (int) {
        int aSize = 0x02;
        int[] s = new int[](aSize);
        s[4] += 0x02;
        return s[0];
    }
}
