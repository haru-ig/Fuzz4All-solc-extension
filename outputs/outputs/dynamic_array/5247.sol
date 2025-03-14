pragma solidity ^0.8.0;
contract Test39 {
    function g() public pure returns (int[] memory) {
        return new int[](4);
    }
    function f() public pure returns (int[] memory) {
        return new int[](3);
    }
}
library Test39 {
  function h() public pure returns (int[4] memory) {
    return new int[](4);
  }
}
contract Test40 {
    function g() public pure returns (int[4] memory) {
        int[4] memory a = new int[](4);
        int[5] memory b = new int[](5);
        a.length = 4;
        b.length = 5;
        return a;
    }
    function h() public pure returns (int[][] memory) {
        return new int[1][][](1);
    }
    function i() public pure returns (int[2][3] memory) {
        return new int[](2)[];
    }
    function j() public pure returns (int[2][][][3] memory) {
        int[][][3] memory a = new int[1][3][];
        return a;
    }
}
