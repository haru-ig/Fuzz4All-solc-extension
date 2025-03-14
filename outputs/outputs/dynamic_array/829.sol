pragma solidity ^0.8.0;

struct A {}

contract A {
    function f(A[] memory _arr) public view {
        A[uint(arraySize(_arr))] memory a1;
        A[uint(arraySize(_arr))] memory a2;
        A[uint(arraySize(_arr))] memory a3;
        for (uint i = 0; i < arraySize(_arr); i++) {
            if (_arr[i].id == a1) {
                a1.id = a2;
                a2.id = a3;
                a3.id = a1;
            }
        }
    }

    function getArraySize() public pure returns(uint) { return 5;}

    function arraySize(A[] memory _arr) public pure returns(uint) { return uint(_arr.length);}
}
