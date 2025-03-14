pragma solidity ^0.8.0;
contract Main7 {
    function a(uint a, uint n) public {
        if (a > uint256(n)) {
            while(a > uint256(n)) {
                for(uint i = 0; i < a; i++) {
                    i = i + uint256(n);
                }
            }
        }
    }
}
