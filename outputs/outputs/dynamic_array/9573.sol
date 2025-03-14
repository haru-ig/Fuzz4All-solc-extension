pragma solidity ^0.8.0;
contract Main2 {
    function a(uint a, uint n) public {
        if (a > uint(n)) {
            (a, n) = (n, a);
        }
    }
}
