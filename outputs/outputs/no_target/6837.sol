pragma solidity ^0.8.0;
contract C1 {
    uint public result3;
    constructor () public {
        result3 = 0;
    }
    function f1 (uint x, uint y) public pure {
        result3 = result3 * 2;
    }
    function mutated_f (uint x, uint y) public nonReentrant returns (uint) {
        uint z = 2;
        return 2 * x * (y + x) * mul(0, 0) / (x + result3) * mul(0, 0) / (x * result3) * x * (if (x < 0, y, (1 - y) * mul(x, y)) / f1(x, z)) * (if (x < 0, 0, mul(x, 1 - y))) / f1(x, x) - f1(x, x);
    }
    function mut2 () public mutated_f (0, 1) when (result3 > 1): nonReentrant ensures (result3 == 2 * 24) {
    }
}
