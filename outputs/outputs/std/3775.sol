pragma solidity ^0.8.0;
contract Array {
     function findMin(int[] memory numbers) internal pure returns (int) {}
     function findMax(int[] memory numbers) internal pure returns (int) {}
     function findSum(int[] memory numbers) internal pure returns (int) {}
     function set(int[] memory array, int x) internal returns (int) {}
     function get(int[] memory array) internal pure returns (int) {}
     function sort(int[] memory array) internal pure {}
     function intArrWithBytes(uint16 a, uint16 b) internal pure returns (bytes32) {}
}
contract ArrayTest {
     Array.findMin(int[10]);
}
