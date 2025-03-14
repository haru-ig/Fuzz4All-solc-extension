pragma solidity ^0.8.0;
contract MyContract {
    uint myuint;
    uint constant myconst = 3 * 6 / 9;
    function f() public {
        myuint = myuint * myconst + myconst;
    }
}
