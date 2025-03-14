pragma solidity ^0.8.0;
contract ArrayMutations {
    function sum(uint[] memory _arr) public returns (uint) {
        uint arrayLength = _arr.length;
        uint sum = _arr[arrayLength - 1];
        for(uint i = arrayLength - 2; i >= 0; i--)
            sum += _arr[i];
        return sum;
    }
    function product(uint[] memory _arr) public returns (uint) {
        uint arrayLength = _arr.length;
        uint prod = _arr[arrayLength - 1];
        uint t = _arr[0];
        for(uint i = arrayLength - 2; i >= 0; i--) {
            prod *= _arr[i];
            _arr[i] = t;
            t *= _arr[i];
        }
        return prod;
    }
}
