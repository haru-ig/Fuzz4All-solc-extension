pragma solidity ^0.8.0;
contract Main6 {
    function a(uint a) public {
        uint n = 1;
        while(a > uint256(n)) {
            a = a - uint256(n);
        }
    }
}
