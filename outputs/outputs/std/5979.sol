pragma solidity ^0.8.0;
contract SemanticsEquivalentChanges4 {
    struct Array {
        uint[] arr1;
        uint[][] arrN;
        uint[][][] arr;
    }

    function f(uint n) public pure {
        Array memory foo;
        if (n == 0) {
            foo.arr1 = new uint[](0);
        } else if (n == 1) {
            foo.arr1 = [ 5 ];
        } else if (n == 2) {
            foo.arr1 = [ 5, 3 ];
        } else {
            uint[] memory x = new uint[](n);
            for (uint i = 0; i < n; i++) {
                x[i] = uint(i);
            }
            foo.arr1 = x;
        }
    }
}
