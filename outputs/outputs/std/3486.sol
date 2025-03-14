pragma solidity ^0.8.0;
contract Program {
    function modify(int[] memory arr) public {
        int[] storage newArr = arr;
        newArr[3] = 10000;
    }
}
