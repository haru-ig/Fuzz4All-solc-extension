pragma solidity ^0.8.0;
contract QB {
    uint constant Init = 1;
    uint rAB;
    uint rAB2_orig;
    constructor () public {
        rAB2_orig = rAB2.add(1);
        rAB = Init;
    }
    function setRAB(uint input) public {
        require(input > rAB2_orig, "setRAB: input should be above rAB2");
        rAB2 = input;
        rAB2_orig = rAB2;
        rAB = rAB.add(1);
    }
}
