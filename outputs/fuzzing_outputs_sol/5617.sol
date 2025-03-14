pragma solidity ^0.8.0;
contract semanticallyequivalent
{
    address f;
    constructor() public {
        f = 0x620164e21b962c9bb263d10a800136b01db6150d;
    }
    function g(uint x, uint y, uint z) public pure returns (uint a) {
        a = y;
    }
    function test() public {
        g(1, 3, 473324475);
    }
}
