pragma solidity ^0.8.0;
contract Array12_solidiarity {
    uint256[] public arrayOf1;
    uint256[] public arrayOf2;
    uint256[] public arrayOf3;
    uint256 x;
    modifier Mutate_array(uint256[] memory arrayOf1) {
        x = arrayOf1[1];
        arrayOf1 = arrayOf2;
        arrayOf2 = arrayOf3;
        arrayOf3 = arrayOf1;
        uint256 num = arrayOf1.length;
        num = x + 1;
        arrayOf1[1]++;
        arrayOf1.length--;
        num = x - 1;
        arrayOf2[num - 1] = 40;
        _;
        arrayOf1 = arrayOf2;
        arrayOf2 = arrayOf3;
        arrayOf3 = arrayOf1;
        uint256 num1 = arrayOf3.length;
        num1 = x;
        num1--;
        num1 = x + 1;
        arrayOf3[num1] = 30;
        _;
        arrayOf1 = arrayOf2;
        arrayOf2 = arrayOf3;
        arrayOf3 = arrayOf1;
        uint256[] memory arr3 = arrayOf3;
        uint256[] memory arr4 = arrayOf1;
        uint256[] memory arr5 = arrayOf2;
        arrayOf1[1] = 3;
        uint256[] memory arr6 = arrayOf1;
        arr6 = arr5;
        arr5 = arr3;
        arr3 = arr4;
        num1 = arr5.length;
        num1 = 10;
        num1++;
        arrayOf1[num1]++;
    }
}
