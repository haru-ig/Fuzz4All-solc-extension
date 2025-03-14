pragma solidity ^0.8.0;
contract Main1 {
    function a(uint[] memory x, uint t) public {
        for (uint i=0 ; i<t ; ) {
            a(0, 0);
            x[2] = a(0);
        }
    }
}
