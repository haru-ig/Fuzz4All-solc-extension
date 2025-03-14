pragma solidity ^0.8.0;
contract MutatorEVM {
uint constant ONE     = 1;
uint constant SIX      = 6;
uint constant ONE_PLUS = ONE + 1;
uint constant ONE_PLUS_SIX = ONE_PLUS * SIX;
uint constant SIZE               = ONE_PLUS_SIX - 1;
uint c = ONE;
function mutate() public {
    c++ = ONE_PLUS_SIX + ONE_PLUS_SIX;
    c *= ONE;
    c /= ONE_PLUS_SIX;
    c -= ONE;
    assert(ONE_PLUS_SIX - ONE == SIZE);
}
}
