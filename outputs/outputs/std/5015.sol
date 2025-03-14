pragma solidity ^0.8.0;
contract Mutated {
    uint256[] public arr;
    function setAtIndex(uint256 index, uint256 x) public modify(uint256[] storage arr) internal {
        uint256[] storage tmp = arr;
        tmp[index] = x;
    }
    function findMin(uint256[] storage arr) public view returns(uint256 result) {
        uint256 temp = arr[0];
        for (uint256 i = 0; i < arr.length; i++) {
            if (arr[i] < temp) {
                temp = arr[i];
            }
        }
        result = temp;
    }
    function findMax(uint256[] storage arr) public view returns(uint256 result) {
        uint256 temp = arr[0];
        for (uint256 i = 0; i < arr.length; i++) {
            if (arr[i] > temp) {
                temp = arr[i];
            }
        }
        result = temp;
    }
    function add(uint256 x, uint256 y) public modify(uint256[] storage arr) internal {
        arr.push(Array.add(x, y));
    }
}

pragma solidity ^0.8.0;
contract Modifiable {
    uint256[] public arr1;
    uint256[] public arr2;
    uint256 constant arr1Capacity = 2;
    uint256 constant arr2Capacity = 3;
    function setAtIndex(uint256 index1, uint256 index2, uint256 x) public modify(uint256[] storage arr1, uint256[] storage arr2) internal {
        uint256[] storage tmp1 = arr1;
        tmp1[index1] = x;
        uint256[] storage tmp2 = arr2;
        tmp2[index2] = x;
    }
}
