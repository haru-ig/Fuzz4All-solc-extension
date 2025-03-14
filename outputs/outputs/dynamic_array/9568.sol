pragma solidity ^0.8.0;
contract Main8 {
    function a(uint a, uint n) public {
        if (a < uint256(0)) {
            continue;
        }
        while(((a < uint256(n)) && a > uint256(0))) {
            for(uint i = 0; i < a; i++) {
                a = a + uint256(n);
            }
        }
    }
}
