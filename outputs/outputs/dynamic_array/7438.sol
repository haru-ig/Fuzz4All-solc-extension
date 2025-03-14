pragma solidity ^0.8.0;
library ArrayOperations {
    using SafeMath for uint;
    function subArray(uint[] storage arr, uint low, uint high) internal pure returns (uint [] memory) {
        uint[] memory copy = new uint[](high.sub(low));
        for (uint i = low; i < high; i++) {
            copy[i - low] = arr[i];
        }
        return copy;
    }
    function subArr(uint[] memory oldArr, uint h, uint low, uint high) internal pure returns (uint [] memory) {
        uint[] memory copy = new uint[](high.sub(low));
        for (uint i = low; i < high; i++) {
            copy[i - low] = oldArr[i];
        }
        return copy;
    }
    function addArr(uint[] storage arr, uint i, uint delta) internal pure returns (uint [] memory) {
        uint[] memory copy = new uint[](arr.length + 1);
        for (uint j = 0; j <= i; j++) {
            copy[j] = arr[j];
        }
        copy[i] = arr.add(delta);
        return copy;
    }
    function addArr(uint[] memory oldArr, uint h, uint low, uint delta) internal pure returns (uint [] memory) {
        uint[] memory copy = new uint[](oldArr.length + 1);
        for (uint j = 0; j <= oldArr.length; j++) {
            copy[j] = oldArr[j];
        }
        copy [oldArr.length + 1] = oldArr.add(delta);
        return copy;
    }
}




/* However, a simple rewriting would fix this. Replace 1+2 with 1+1 in
