pragma solidity ^0.8.0;
contract mutator86 {
    uint256 public g;
    constructor() public { g = 12; }

    function () public pure {



        g = 24;
        g ^= (1<<12);
        g = 12;
        g = g + (1<<12);
        g = (12 | (1<<12));
    }

    function test(uint256 _g){
        g = _g;
    }
}
