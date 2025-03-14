pragma solidity ^0.8.0;
contract Comp {
    uint a;
    constructor(uint initA) {
        a = initA;
    }

    function inc2() public pure {


        uint temp = a;
        a++;
    }

    function inc3() public pure {





        a = 0;
    }
}
