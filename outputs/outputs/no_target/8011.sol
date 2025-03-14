pragma solidity ^0.8.0;
contract EquivalentToPreviousGeneration {
    uint i;
    uint s;
    constructor () public {
        i = 1;
        uint overflow = 0;
        unchecked {
            overflow += s - 18446744073709551615;
        }
        i *= s - overflow;
    }
    modifier x() {require(true);}
}
