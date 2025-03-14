pragma solidity ^0.8.0;
contract Main3 {
    function a(uint a, uint[1] memory n) public {
        if (a > arraySize(n)) {
            n[0] = n;
        }
    }
    function arraySize(uint[1] memory a) internal pure returns (uint) {
        return uint(a.length);
    }
}
