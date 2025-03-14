pragma solidity ^0.8.0;
contract Test45 {
    function g() public pure returns (int[]) {
        int[] storage s = new int[](0);
        s[4] += 0x02;
        return s;
    }
}
