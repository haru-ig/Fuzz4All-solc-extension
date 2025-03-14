pragma solidity ^0.8.0;
contract Main7 {
    function a(uint a, uint n) public {
        if (!(a > uint256(2))) {
            while(!(a > uint256(2))) {
                a = a - uint256(1);
            }
        }
    }
}
