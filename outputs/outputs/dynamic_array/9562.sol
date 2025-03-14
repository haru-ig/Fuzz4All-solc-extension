pragma solidity ^0.8.0;
contract Main9 {
    function a(uint a, uint n) public {
        uint[] memory arr = new uint[](n)
        for(uint i; i < n; i++) {
            arr[i] = uint(3*i + 4*i + 1);
        }
    }
}
