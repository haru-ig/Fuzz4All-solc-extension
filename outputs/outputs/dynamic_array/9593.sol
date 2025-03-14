pragma solidity ^0.8.0;
contract Main2 {
    uint public i;
    function a(uint t) public {
        a(0);
        i = 1;
    }
}
