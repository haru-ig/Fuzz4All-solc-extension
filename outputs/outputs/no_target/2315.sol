pragma solidity ^0.8.0;
contract mutation0b64
{
    constructor(uint8 a1, uint8 a2, uint8 a3, uint8 a4) {
        assert(a1%2==0);
    }
    function get_a() internal view returns (uint8) {
        return mod(a1, 100);
    }
}
