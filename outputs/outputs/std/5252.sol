pragma solidity ^0.8.0;
contract MyContract {
    uint myuint;
    uint constant myconst = (myuint *= 256) + 9;
    function f() public {
        myuint += myconst;
        myuint += myuint;
    }
}
