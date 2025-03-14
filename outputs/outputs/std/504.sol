pragma solidity ^0.8.0;
contract test {



    constructor () {
        uint256[2] memory emptyArr = ;
        delete emptyArr[(uint160)address(this)];
        x1 = (100500);
        x2 = (100000);
        (
        uint32[2] memory array1,
        uint32[2] memory array2,
        uint32[2] memory array3
        ) = test.doSomethingWith(x1, x2);
        (array1[0], array1[1], array1[2]) = (0, 0, 0);
        test.doSomethingWith(x1, 100);
        (
        uint32[1] memory array1,
        uint32[1] memory array2,
        uint32[1] memory array3
        ) = test.doSomethingWith(x1, 0);
        uint32[2] memory newArr;
        (array1[0], array1[1], array1[2]) = (0, 0, 0);
        (array2[0], array2[1], array2[2]) = (0, 0, 0);
        (array3[0], array3[1], array3[2]) = (0, 0, 0);
        (
        uint32[1] memory array1,
        uint32[1] memory array2,
        uint32[1] memory array3
        ) = test.doSomethingWith(x2, 0, 1);
        newArr[0] = x2;
        newArr[1] = x1;
        (
        uint32[1] memory array1,
        uint32[1] memory array2,
        uint32[1] memory array3
        ) = test.doSomethingWith(x1 + x2, 0, 1);
        newArr[0] = x2;
        newArr[1] = x1;
        (
        uint32[2] memory array1,
        uint32[2] memory array2,
        uint32[2] memory array3
        ) = test.doSomethingWith(x1 + x2, 0, 1 + 3);
        newArr[0
