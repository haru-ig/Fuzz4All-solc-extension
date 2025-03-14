pragma solidity ^0.8.0;
contract Test48 {
    function g() public pure returns (int[] memory) {
        var s = new int[](3);
        s[0] = 0x1b;
        s[1] = 0xff;
        s[2] = 0xac;
        return s;
    }
}
