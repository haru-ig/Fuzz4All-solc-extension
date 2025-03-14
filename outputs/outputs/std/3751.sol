pragma solidity ^0.8.0;


contract ArrayExample {
    uint256[] internal a = [ 0, 1, 2, 3, 4, 0, 1, 0];
}

contract MathExample {
    function abs(uint256 n) public pure returns (uint256) {
        return (n <= 0)? 0 : n;
    }
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
}
contract ArrayExample {
    function findMissingOne(uint256[] memory array) public pure returns (uint256) {
       uint256 missing = getIndexOfMin(_array);
       if (missing == array.length) return 0;
       while (_array[missing] == 0 && missing!= array.length) missing++;
       if (_array[missing] == 0) {
           return missing + 1;
       }
       return 0;
    }
    function findLargest() public pure returns (uint256) {
        uint256 largest = a.length > b.length? a.length : b.length;
        if (a == b) return 0;
        while (a[largest] > 0 && b[largest] > 0) {
           largest--;
        }
        return largest;
    }
    function largest() public pure returns (uint256) {
        return a[a.length - 1] > b[b.length - 1]? a.length : b.length;
    }
    function smallest() public pure returns (uint256) {
        return a.length < b.length? a.length : b.length;
    }
    function toBytes() public pure returns (bytes memory) {
        bytes memory toReturn = new bytes((a.length+b.length)*2);
        uint256 ptr = 0;
        for (uint256 i = 0; i < a.length; i++) {
            toReturn[ptr] = a[i];
            ptr++;
        }
        for (uint256 i = 0; i < b.length; i++) {
            toReturn[ptr] = b[i];
            ptr++;
        }
        return toReturn;

    }
    function isMax(uint256 i) public pure returns (bool) {
        return i == a.length;
    }
    function getIndexOfMin(uint256[] memory array) public pure returns (uint256) {
        uint256 min = a.length;
        for (uint256 i = 0; i < a.length; i++) {
            if (array[i
