pragma solidity ^0.8.0;
contract Test39 {
    function g() public pure returns (int[][] memory) {
        return new int[4][][](4);
    }
}
