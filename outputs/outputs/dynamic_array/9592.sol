pragma solidity ^0.8.0;
contract Main2 {
    function a(uint t) public {
        for (uint i=0 ; i<t ; i++) {
            a(t-i-1,1);
        }
    }
}
