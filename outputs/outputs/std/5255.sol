pragma solidity ^0.8.0;


contract MyContract {
    uint myconst = 3 * 6 / 9;


    uint myuint;

    function f() public {
        myuint = myuint * myconst + myconst;
    }
}
