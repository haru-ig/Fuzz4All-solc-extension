pragma solidity ^0.8.0;
contract Mutated1 {
function init() public {
    uint val = 5;
    uint j = 1;
    uint x;

    x = 3 - val;
    j = 2 * val - j;
    x = x * 2 - 100;
    assert(val + j + x == 1);

    }
}
