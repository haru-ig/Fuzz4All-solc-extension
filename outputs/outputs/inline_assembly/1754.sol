pragma solidity ^0.8.0;
contract MutatorS29 {
uint256 constant ONE     = 1;
uint256 constant SIX      = 6;
uint256 constant ONE_PLUS = ONE + 1;
uint256 constant ONE_PLUS_SIX = ONE_PLUS * SIX;
uint256 constant SIZE               = ONE_PLUS_SIX - 1;
uint256 c = ONE;
function mutate() public {
    c = ONE - ONE;
    c *= ONE;
    i32 x;
    i32 y;
    i32 z;
    uint256 w;
    uint256 result;
    x  = ONE;
    x += ONE;
    x += ONE;
    assert(ONE + 1 == x);
    x -= ONE;
    x -= ONE;
    assert(ONE - 1 == x);
    x *= ONE;
    x *= ONE;
    assert(ONE == x);
    x /= ONE;
    x /= ONE;
    assert(ONE_PLUS_SIX / ONE_PLUS_SIX == x);
    x -= (uint256) ONE;
    assert(SIZE == x);
    w      = uint256(ONE + SIX);
    w      -= uint256(ONE + SIX);
    result = uint256(ONE + SIZE);
    result -= uint256(ONE + SIZE);
    assert(SIZE < w);
    assert(ONE < w);
    assert(SIZE > w);
    assert(ONE > w);
    assert(w == ONE);
    assert(w < ONE);
    assert(ONE < w);
    assert(w < ONE);
}
}
