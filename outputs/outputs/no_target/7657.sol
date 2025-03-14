pragma solidity ^0.8.0;
contract A {

    modifier m {
        uint x = 0;
        x;
    }



    uint x;
 }



contract B {

    uint x;

    modifier m {

        if (x == 1) {
            _;
        }
    }

    constructor() public {
        A.m();
    }
}
