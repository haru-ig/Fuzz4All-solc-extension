pragma solidity ^0.8.0;
contract Array {

    function sum(uint[] memory _arr) pure public returns (uint sum) {
        uint arrayLength = _arr.length;
        sum = _arr[0];
        for(uint i = 1; i < arrayLength; i++)
            sum += _arr[i];
    }

    function product(uint[] memory _arr) pure public returns (uint prod) {
        uint arrayLength = _arr.length;
        prod = _arr[arrayLength - 1];
        for(uint i = arrayLength - 2; i >= 0; i--)
            prod *= _arr[i];
    }
}
