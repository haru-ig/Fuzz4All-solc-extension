pragma solidity ^0.8.0;
contract C {

    constructor() {

        string s;

        struct S {
            uint16 i;
            uint16 j;
        }
        S s3;
        s = "hi";


        s3.i;
        s3.i = 4;


    }
    uint16 x = 7;
    function f() public {
        x = 8;
    }
}
