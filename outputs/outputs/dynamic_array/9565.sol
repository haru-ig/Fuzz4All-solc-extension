pragma solidity ^0.8.0;
contract Main8 {
    function a(uint a, uint n) public {
        a += uint256(n);
        while(a > uint256(n)) {
            a = a + uint256(n);
        }
    }
}
