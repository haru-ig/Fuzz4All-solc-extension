pragma solidity ^0.8.0;
contract SolidityExample2 {
    uint x;
    mapping(uint => bool memory) m;
}
contract ArrayExample {
    uint[10] myarray;
    function add(uint[10] memory A, uint n) public pure {
        while (n-- > 0) {
            A[n + 1] = A[n] + 1;
        }
    }
    function add(uint[4] memory A, uint n) public pure {
        while (n-- > 0) {
            A[n + 1] = A[n] + 1;
        }
    }
}
