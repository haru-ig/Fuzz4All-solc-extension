pragma solidity ^0.8.0;
contract Main {
    address[] public arr;
    mapping(uint => uint[]) public arrWithNestedCalldataSize;
    constructor () public {
        arr[0] = address(this);
        arr[1] = address(this);
        while (arr.length < 10) {
            arr[arr.length + 1] = address(this);
        }
        arrWithNestedCalldataSize[0][0] = 0;
        arrWithNestedCalldataSize[0][1] = 0;
        arrWithNestedCalldataSize[1][0] = 0;
        arrWithNestedCalldataSize[1][1] = 0;
        while (arrWithNestedCalldataSize[1].length < 10) {
            uint j = 0;
            for (j = arrWithNestedCalldataSize[0].length / 2 + 1; j <= 10 + j && arrWithNestedCalldataSize[0][j]!= 0; ) {
                arrWithNestedCalldataSize[0][--j] = arrWithNestedCalldataSize[0].length - j;
            }
            arrWithNestedCalldataSize[1].length = j;
            arrWithNestedCalldataSize[j + 1][0] = arrWithNestedCalldataSize[0][--j];
            arrWithNestedCalldataSize[j + 1][1] = arrWithNestedCalldataSize[0][--j];
        }
    }
}
