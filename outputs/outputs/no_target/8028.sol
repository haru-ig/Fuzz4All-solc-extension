pragma solidity ^0.8.0;
contract Mutator1
{
    address a1;
    address a0;
    uint i;
    uint s;
    constructor () public {
        a0 = a1;
        s = 0;
        a1 = address(0x1);
        i = 1;
        uint overflow = 0;
        unchecked {
            overflow += uint160(-4294967296 - s - 1) - 18446744073709551615;
        }
        i = (overflow + 1) / 2;
    }
}
