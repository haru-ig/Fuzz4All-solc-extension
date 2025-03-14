pragma solidity ^0.8.0;
contract Main2 {
    function a(uint a, uint n) public {
        a = a < n? a : n;
    }
}
