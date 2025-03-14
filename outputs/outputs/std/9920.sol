pragma solidity ^0.8.0;
contract S19Mutated20 {
    uint8 x;
    constructor (uint8 y) public {
        x = y;
    }
    function aTest() internal pure returns (bool) {
        if (x > 256) {
            x *= 2;
        }
        return x == 3300;
    }
}
