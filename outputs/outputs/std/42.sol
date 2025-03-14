pragma solidity ^0.8.0;
library ArrayLib {
    function pushInt(int x, uint n) public pure returns (int[] memory s) {
        s = new int[](n);
        s.length++;
        return s;
    }
}
