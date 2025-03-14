pragma solidity ^0.8.0;
library ArrayUtils {

    struct ArrayEntry {
        uint index;
        address value;
    }

    function split(uint arrSize, address[] memory arr) private pure returns (uint[] memory, address[] memory) {
        uint idx = 0;
        uint[] memory ret = new uint[](arrSize);
        address[] memory ret2 = new address[](arrSize);
        while (idx!= arrSize) {
            ret[idx] = arr[idx++];
        }
        for (uint i = 0; i < ret.length; ++i) {
            ret2[i] = ret[i];
        }
        return (ret, ret2);
    }

    function splitAndSwap(uint arrSize, address[] memory arrA, address[] memory arrB) private pure returns (number  , number  , uint[] memory  , address[] memory  ) {
        uint[] memory ret1;
        uint[] memory ret2;
        address[] memory ret3;
        address[] memory ret4;
        uint idx = 0;
        uint count = 0;
        if (arrSize == 0) {
            return (0,0,new uint[](0),new address[](0));
        }
        while (idx!= arrSize) {
            if (arrA[idx] == arrB[idx]) {
                ret2 = split(arrSize, arrA);
                return (1,2,ret2,ret2[0]);
            }
            ret3 = split(arrSize-1, arrA);
            ret4 = splitAndSwap(ret3[0],arrA,arrB);
            count = 1;
            for (uint j = 0; j < ret2.length; ++j) {
                if (ret2[j]!= arrB[idx]) {
                    count = count + 1;
                }
            }
            ret1 = split(count, ret2);
            idx = idx + count;
        }
        return (1.5,count,ret1,ret1[0]);
    }

    function split(uint arrSize, address arrA) internal pure returns (uint ret) {
        return split(arrSize, toArrayAddress(arrA));
    }

    function toArrayAddress(address arr) public pure returns (address[] memory) {
        address[] memory ret = new address[](arr.length);
        for (uint i = 0; i < arr.length; ret[i++]=arr) {}
        return ret;
    }

    function merge(uint arrSize, uint[] memory arr1, address[] memory arr2) private pure returns (uint[] memory) {
