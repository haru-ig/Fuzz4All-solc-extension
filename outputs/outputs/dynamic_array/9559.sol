pragma solidity ^0.8.0;
contract Main6 {
    function a(uint a, uint n) public {
        if (a > uint256(n)) {
            while(a > uint256(n)) {
                a = a - uint256(n);
            }
        }
    }
}
