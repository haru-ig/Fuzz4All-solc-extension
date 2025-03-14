pragma solidity ^0.8.0;


contract Array {

    function getFirst(uint[] memory arr) public pure returns (uint) {
        return arr[0];
    }

    function getLast(uint[] memory arr) public pure returns (uint) {
        return arr[arr.length - 1];
    }

    function getMiddle(uint[] memory arr) public pure returns (uint[]) {
        uint[] memory temp = new uint[](arr.length - 2);
        for (uint i = 0; i < arr.length - 2; i++) {
            temp[i] = arr[i + 1];
        }
        return temp;
    }


    function getLastIndex(uint[] memory arr) public pure returns (uint) {
        uint temp = arr[0];
        for (uint i = 1; i < arr.length; i++) {
            if (arr[i] > temp) {
                temp = arr[i];
            }
        }
        return temp;
    }

    function getFirstWithout(uint[] memory arr) public pure returns (uint[]) {
        uint[] memory temp = new uint[](arr.length);
        for (uint i = 0; i < arr.length; i++) {
            if (i!= 0)
                temp[i] = arr[i];
        }
        return temp;
    }

    function sort(uint[] memory arr) public pure returns (uint[]) {
        uint[] memory temp = new uint[](arr.length);
        for (uint i = 0; i < arr.length; i++) {
            uint[] memory arr2 = new uint[](arr.length - i);
            for (uint i2 = i; i2 < arr.length; i2++)
            {
                arr2[i2 - i] = arr[i2];
            }
            temp[i] = ArrayMath.max(i, ArrayMath.sum(arr2));
        }
        return temp;
    }
}
