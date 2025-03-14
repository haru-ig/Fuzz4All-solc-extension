pragma solidity ^0.8.0;
contract QB {
    uint constant Init = 1;
    uint rAB;
    uint rAB2;
    constructor () public {
        for (uint x = 0; x < 1000; x++) {
            if (Init == 1) break;
            rAB = rAB2 - rAB;
        }
        rAB = rAB2 + rAB;
    }
}

contract QB {
    function test() public  {

        uint constant Init = 1;
        uint rAB;
        uint rAB2;
        for (uint x = 0; x < 1000; x++) {

            rAB = rAB2 - rAB;
        }
        rAB = rAB2 + rAB;
    }
}
